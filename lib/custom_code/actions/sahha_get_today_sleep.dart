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

/// Returns today's total sleep as a double.
///
/// If anything goes wrong, returns 0.0 (never null).
Future<double> sahhaGetTodaySleep() async {
  if (kIsWeb) {
    // Sahha doesn't work on web; avoid crashes in FF web preview.
    debugPrint('sahhaGetTodaySleep: running on web, returning 0.0');
    return 0.0;
  }

  try {
    final now = DateTime.now();
    // Today from midnight local time to now
    final start = DateTime(now.year, now.month, now.day);

    final raw = await SahhaFlutter.getStats(
      sensor: SahhaSensor.sleep,
      startDateTime: start,
      endDateTime: now,
    );

    debugPrint('sahhaGetTodaySleep raw stats: $raw');

    if (raw == null) {
      debugPrint('sahhaGetTodaySleep: raw is null');
      return 0.0;
    }

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
      debugPrint('sahhaGetTodaySleep: unexpected JSON shape: $decoded');
      return 0.0;
    }

    if (statsList.isEmpty) {
      debugPrint('sahhaGetTodaySleep: stats list is empty');
      return 0.0;
    }

    double total = 0.0;

    for (final item in statsList) {
      if (item is Map) {
        // Try a bunch of common sleep keys
        final dynamic v = item['minutes'] ??
            item['Minutes'] ??
            item['totalMinutes'] ??
            item['total_minutes'] ??
            item['totalMinutesAsleep'] ??
            item['duration'] ??
            item['durationMinutes'] ??
            item['value'] ??
            item['Value'] ??
            item['count'] ??
            item['Count'];

        if (v is num) {
          total += v.toDouble();
        } else {
          debugPrint(
              'sahhaGetTodaySleep: item had no numeric value field: $item');
        }
      } else if (item is num) {
        total += item.toDouble();
      } else {
        debugPrint('sahhaGetTodaySleep: unexpected item type: $item');
      }
    }

    debugPrint('sahhaGetTodaySleep: total=$total');
    return total;
  } catch (e, stack) {
    debugPrint('sahhaGetTodaySleep error: $e');
    debugPrint(stack.toString());
    return 0.0;
  }
}
