// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:sahha_flutter/sahha_flutter.dart';

Future<List<double>?> getStepsLast7Days() async {
  try {
    // Normalise "today" to midnight so day buckets are clean
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final start = today.subtract(const Duration(days: 6));

    // Call Sahha Flutter SDK
    final statsJson = await SahhaFlutter.getStats(
      sensor: SahhaSensor.steps,
      startDateTime: start,
      endDateTime: today.add(const Duration(days: 1)), // include today
    );

    // getStats returns a JSON string (array of stats)
    // Example element shape (from Sahha docs):
    // {
    //   "id": "...",
    //   "category": "activity",
    //   "type": "steps",
    //   "value": 1234.0,
    //   "unit": "count",
    //   "startDateTime": "2025-03-20T00:00:00Z",
    //   "endDateTime": "2025-03-21T00:00:00Z",
    //   "sources": [...]
    // }

    final List<dynamic> stats = jsonDecode(statsJson);

    // Aggregate by local calendar day
    final Map<DateTime, double> byDay = {};

    for (final stat in stats) {
      if (stat is! Map) continue;

      final valueRaw = stat['value'];
      final startStr = stat['startDateTime'] as String?;

      if (startStr == null) continue;

      final value = (valueRaw is num) ? valueRaw.toDouble() : 0.0;
      final dt = DateTime.parse(startStr).toLocal();
      final dayKey = DateTime(dt.year, dt.month, dt.day);

      byDay[dayKey] = (byDay[dayKey] ?? 0) + value;
    }

    // Build a 7-element list oldest → newest
    final List<double> result = [];
    for (int i = 6; i >= 0; i--) {
      final day = today.subtract(Duration(days: i));
      result.add(byDay[day] ?? 0.0);
    }

    return result;
  } catch (e, st) {
    // Helpful for debugging in logcat
    debugPrint('ERROR retrieving 7d steps: $e');
    debugPrint(st.toString());
    return null;
  }
}
