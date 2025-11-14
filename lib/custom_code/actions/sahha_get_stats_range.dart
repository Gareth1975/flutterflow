// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Get Sahha stats over a date range and normalise to:
/// [ { "date": "YYYY-MM-DD", "value": 1234.0 }, ... ]
///
/// - sensorName: e.g. "steps", "sleep", "floorsClimbed"
/// - daysBack: number of days including today (e.g. 7)
Future<List<dynamic>> sahhaGetStatsRange(
  String sensorName,
  int? daysBack,
) async {
  // Always return a non-null list so FlutterFlow is happy.
  if (kIsWeb) {
    // Sahha doesn't run on web; avoid crashes in FF preview.
    return <dynamic>[];
  }

  try {
    // Map sensorName string to SahhaSensor enum (case-insensitive).
    final lower = sensorName.toLowerCase();
    final SahhaSensor sensor = SahhaSensor.values.firstWhere(
      (s) => s.name.toLowerCase() == lower,
      orElse: () => SahhaSensor.steps,
    );

    // Default to 7 days if null or invalid.
    final int window = (daysBack == null || daysBack <= 0) ? 7 : daysBack;

    final now = DateTime.now();
    // Start from today's midnight, window-1 days ago.
    final todayMidnight = DateTime(now.year, now.month, now.day);
    final start = todayMidnight.subtract(Duration(days: window - 1));

    final dynamic raw = await SahhaFlutter.getStats(
      sensor: sensor,
      startDateTime: start,
      endDateTime: now,
    );

    if (raw == null) {
      return <dynamic>[];
    }

    // Normalise raw -> List<dynamic>
    dynamic decoded = raw;
    if (raw is String) {
      decoded = jsonDecode(raw);
    }

    List<dynamic> statsList;
    if (decoded is List) {
      statsList = decoded;
    } else if (decoded is Map && decoded['stats'] is List) {
      statsList = decoded['stats'] as List;
    } else {
      return <dynamic>[];
    }

    if (statsList.isEmpty) {
      return <dynamic>[];
    }

    // Step 1: map whatever Sahha returns into {date, value}
    final List<Map<String, dynamic>> flat = [];

    for (final item in statsList) {
      if (item is Map) {
        // Value can appear under different keys depending on SDK version.
        final dynamic v = item['value'] ??
            item['Value'] ??
            item['minutes'] ??
            item['Minutes'] ??
            item['count'] ??
            item['Count'];

        // Date/time can also have multiple possible keys.
        final dynamic dt = item['date'] ??
            item['Date'] ??
            item['dateTime'] ??
            item['DateTime'] ??
            item['startDateTime'] ??
            item['StartDateTime'] ??
            item['timestamp'] ??
            item['Timestamp'] ??
            item['endDateTime'] ??
            item['EndDateTime'];

        if (v is num) {
          DateTime d = now;
          if (dt is String) {
            try {
              d = DateTime.parse(dt);
            } catch (_) {
              d = now;
            }
          }

          flat.add({
            'date': DateTime(d.year, d.month, d.day)
                .toIso8601String()
                .substring(0, 10), // YYYY-MM-DD
            'value': v.toDouble(),
          });
        }
      } else if (item is num) {
        // Fallback for simple numeric arrays
        flat.add({
          'date': todayMidnight.toIso8601String().substring(0, 10), // today
          'value': item.toDouble(),
        });
      }
    }

    if (flat.isEmpty) {
      return <dynamic>[];
    }

    // Step 2: merge by date (sum multiple entries per day).
    final Map<String, double> byDate = {};
    for (final row in flat) {
      final String d = row['date'] as String;
      final double v = row['value'] as double;
      byDate[d] = (byDate[d] ?? 0) + v;
    }

    // Step 3: build a full window with zeros for missing days,
    // ordered from oldest -> newest.
    final List<Map<String, dynamic>> filled = [];
    for (int i = 0; i < window; i++) {
      final day = todayMidnight.subtract(Duration(days: window - 1 - i));
      final key = day.toIso8601String().substring(0, 10);
      filled.add({
        'date': key,
        'value': byDate[key] ?? 0.0,
      });
    }

    // This is a List<Map<String, dynamic>> which FF treats as JSON list.
    return filled;
  } catch (e, stack) {
    debugPrint('sahhaGetStatsRange error: $e');
    debugPrint(stack.toString());
    return <dynamic>[];
  }
}
