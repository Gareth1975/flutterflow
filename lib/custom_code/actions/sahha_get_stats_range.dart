// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Returns a list like:
/// [ { "date": "2025-11-05", "value": 5432.0 }, ... ]
///
/// FlutterFlow calls: sahhaGetStatsRange("steps", 7)
Future<List<dynamic>> sahhaGetStatsRange(String sensorName, [int? daysBack]) async {
  // MUST always return a non-null list
  if (kIsWeb) {
    return <dynamic>[];
  }

  try {
    // Map sensorName -> SahhaSensor
    final sensor = SahhaSensor.values.firstWhere(
      (s) => s.name.toLowerCase() == sensorName.toLowerCase(),
      orElse: () => SahhaSensor.steps,
    );

    final int window = (daysBack == null || daysBack <= 0) ? 7 : daysBack;
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day)
        .subtract(Duration(days: window - 1));

    // Allow both String JSON and List return types
    final dynamic raw = await SahhaFlutter.getStats(
      sensor: sensor,
      startDateTime: start,
      endDateTime: now,
    );

    // Normalise to List<dynamic>
    List<dynamic> statsList;

    if (raw is String) {
      final decoded = jsonDecode(raw);
      if (decoded is List) {
        statsList = decoded;
      } else if (decoded is Map && decoded['stats'] is List) {
        statsList = decoded['stats'] as List;
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

    // Convert to [{date, value}]
    final List<Map<String, dynamic>> result = <Map<String, dynamic>>[];

    for (final item in statsList) {
      if (item is Map) {
        final value = item['value'] ?? item['minutes'] ?? item['count'];
        final rawDate = item['dateTime'] ?? item['date'] ?? item['timestamp'];

        if (value is num) {
          DateTime d;
          try {
            d = rawDate is String ? DateTime.parse(rawDate) : now;
          } catch (_) {
            d = now;
          }

          result.add({
            'date': DateTime(d.year, d.month, d.day)
                .toIso8601String()
                .substring(0, 10),
            'value': value.toDouble(),
          });
        }
      } else if (item is num) {
        // Fallback shape: plain number
        result.add({
          'date': DateTime.now().toIso8601String().substring(0, 10),
          'value': item.toDouble(),
        });
      }
    }

    return result; // ✅ success path always returns a list
  } catch (e) {
    // ✅ error path always returns a list
    return <dynamic>[];
  }
}

