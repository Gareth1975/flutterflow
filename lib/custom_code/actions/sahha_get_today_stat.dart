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

/// Accepts positional arg because FF calls like: sahhaGetTodayStat("steps")
Future<String> sahhaGetTodayStat(String sensorName) async {
  if (kIsWeb) return '0';

  try {
    // Map string -> enum (case-insensitive)
    final sensor = SahhaSensor.values.firstWhere(
      (s) => s.name.toLowerCase() == sensorName.toLowerCase(),
      orElse: () => SahhaSensor.steps,
    );

    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day);

    // IMPORTANT: force dynamic so we can support both String JSON and List responses
    final dynamic raw = await SahhaFlutter.getStats(
      sensor: sensor,
      startDateTime: start,
      endDateTime: now,
    );

    // Normalise to a List<dynamic>
    List<dynamic> statsList;

    if (raw is String) {
      // Parse JSON string -> expect a List of items
      final parsed = jsonDecode(raw);
      if (parsed is List) {
        statsList = parsed;
      } else if (parsed is Map && parsed['stats'] is List) {
        // Some SDKs wrap in { stats: [...] }
        statsList = (parsed['stats'] as List);
      } else {
        return '0';
      }
    } else if (raw is List) {
      statsList = raw;
    } else {
      return '0';
    }

    if (statsList.isEmpty) return '0';

    final latest = statsList.last;

    // Pull a numeric value out of common shapes
    num? value;
    if (latest is Map) {
      // common: { "value": 1234, "unit": "count", "dateTime": "..."}
      if (latest['value'] is num) value = latest['value'] as num;
      // Fallbacks if the shape differs:
      if (value == null && latest['minutes'] is num) value = latest['minutes'] as num;
      if (value == null && latest['count'] is num) value = latest['count'] as num;
    } else if (latest is num) {
      value = latest;
    }

    if (value == null) return '0';

    if (sensor == SahhaSensor.sleep) {
      final minutes = value.round();
      final h = (minutes ~/ 60).toString();
      final m = (minutes % 60).toString().padLeft(2, '0');
      return '$h:$m';
    }

    return value.toString();
  } catch (_) {
    return '0';
  }
}
