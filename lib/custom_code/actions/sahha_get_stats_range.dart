// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// lib/custom_code/actions/sahha_get_stats_range.dart
import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Returns a list like:
/// [ { "date": "2025-10-30", "value": 5342.0 }, ... ]
///
/// FlutterFlow calls this as: sahhaGetStatsRange("steps", 7)
Future<List<dynamic>> sahhaGetStatsRange(String sensorName, [int? daysBack]) async {
  // MUST always return a non-null List
  if (kIsWeb) {
    return <dynamic>[];
  }

  try {
    // Map sensorName -> SahhaSensor enum
    final sensor = SahhaSensor.values.firstWhere(
      (s) => s.name.toLowerCase() == sensorName.toLowerCase(),
      orElse: () => SahhaSensor.steps,
    );

    final int window = (daysBack == null || daysBack <= 0) ? 7 : daysBack;
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day)
        .subtract(Duration(days: window - 1));

    // Allow for both String JSON and List responses from getStats
    final dynamic raw = await SahhaFlutter.getStats(
      sensor: sensor,
      startDateTime: start,
      endDateTime: now,
    );

    // Normalise to List<dynamic>
    List<dynamic> statsList;

    if (raw is String) {
      final parsed = jsonDecode(raw);
      if (parsed is List) {
        statsList = parsed;
      } else if (parsed is Map && parsed['stats'] is List) {
        statsList = (parsed['stats'] as List);
      } else {
        return <dynamic>[];
      }
    } else if (raw is List) {
      statsList = raw;
    } else {
      return <dynamic>[];
    }

    if (statsList.isEmpty) {
      return <dynamic>[];
    }

    // Convert to [ {date, value} ]
    final List<Map<String, dynamic>> out = [];
    for (final item in statsList) {
      if (item is Map) {
        final v = (item['value'] ?? item['minutes'] ?? item['count']);
        final dt = (item['dateTime'] ?? item['date'] ?? item['timestamp']);
        if (v is num) {
          DateTime d;
          try {
            d = dt is String ? DateTime.parse(dt) : now;
          } catch (_) {
            d = now;
          }
          out.add({
            'date': DateTime(d.year, d.month, d.day)
                .toIso8601String()
                .substring(0, 10),
            'value': v.toDouble(),
          });
        }
      } else if (item is num) {
        out.add({
          'date': DateTime.now().toIso8601String().substring(0, 10),
          'value': item.toDouble(),
        });
      }
    }

    // Merge by date (sum values per day)
    final Map<String, double> byDate = {};
    for (final row in out) {
      final d = row['date'] as String;
      final v = row['value'] as double;
      byDate[d] = (byDate[d] ?? 0) + v;
    }

    // Fill missing days in the range with zeros
    final List<Map<String, dynamic>> filled = [];
    for (int i = 0; i < window; i++) {
      final d = DateTime(now.year, now.month, now.day)
          .subtract(Duration(days: window - 1 - i));
      final key = d.toIso8601String().substring(0, 10);
      filled.add({'date': key, 'value': byDate[key] ?? 0});
    }

    return filled;  // ✅ successful path returns a List
  } catch (_) {
    // ✅ error path also returns a List
    return <dynamic>[];
  }
}
