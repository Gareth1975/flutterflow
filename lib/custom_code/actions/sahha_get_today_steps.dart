// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'index.dart'; // Imports other custom actions

import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Returns today's total steps as a double.
/// If anything goes wrong, returns 0.0 (never null).
Future<double> sahhaGetTodaySteps() async {
  if (kIsWeb) {
    // Sahha doesn't work on web; avoid crashes in FF web preview.
    return 0.0;
  }

  try {
    final now = DateTime.now();
    // Today from midnight to now
    final start = DateTime(now.year, now.month, now.day);

    final dynamic raw = await SahhaFlutter.getStats(
      sensor: SahhaSensor.steps,
      startDateTime: start,
      endDateTime: now,
    );

    if (raw == null) {
      return 0.0;
    }

    // Normalise to List<dynamic>
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
      return 0.0;
    }

    if (statsList.isEmpty) {
      return 0.0;
    }

    double total = 0.0;

    for (final item in statsList) {
      if (item is Map) {
        // Value can be under 'Value', 'value', 'count', 'minutes', etc.
        final dynamic v = item['Value'] ??
            item['value'] ??
            item['Count'] ??
            item['count'] ??
            item['Minutes'] ??
            item['minutes'];

        if (v is num) {
          total += v.toDouble();
        }
      } else if (item is num) {
        total += item.toDouble();
      }
    }

    return total;
  } catch (e, stack) {
    debugPrint('sahhaGetTodaySteps error: $e');
    debugPrint(stack.toString());
    return 0.0;
  }
}
