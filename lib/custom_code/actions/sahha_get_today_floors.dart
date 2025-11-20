// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Returns today's total floors climbed as a double.
///
/// If anything goes wrong, returns 0.0
Future<double> sahhaGetTodayFloors() async {
  if (kIsWeb) {
    return 0.0;
  }

  try {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day);

    // Try main sensor name
    dynamic raw;
    try {
      raw = await SahhaFlutter.getStats(
        sensor: SahhaSensor.floors_climbed,
        startDateTime: start,
        endDateTime: now,
      );
    } catch (_) {
      // Fall back for SDKs that use floorsClimbed
      raw = await SahhaFlutter.getStats(
        sensor: SahhaSensor.floors_climbed,
        startDateTime: start,
        endDateTime: now,
      );
    }

    if (raw == null) return 0.0;

    dynamic decoded = raw is String ? jsonDecode(raw) : raw;

    List<dynamic> statsList;
    if (decoded is List) {
      statsList = decoded;
    } else if (decoded is Map && decoded['stats'] is List) {
      statsList = decoded['stats'];
    } else {
      return 0.0;
    }

    if (statsList.isEmpty) return 0.0;

    double total = 0.0;

    // Floors climbed usually uses `value` or `count`
    for (final item in statsList) {
      if (item is Map) {
        final v =
            item['value'] ?? item['Value'] ?? item['count'] ?? item['Count'];
        if (v is num) total += v.toDouble();
      } else if (item is num) {
        total += item.toDouble();
      }
    }

    return total;
  } catch (e) {
    debugPrint('sahhaGetTodayFloors error: $e');
    return 0.0;
  }
}
