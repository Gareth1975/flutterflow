// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// Set your action name, define your arguments and return parameter, and then
/// add the boilerplate code using the green button on the right!
//
import 'package:sahha_flutter/sahha_flutter.dart';

Future<List<double>?> getStepsLast7Days() async {
  try {
    final now = DateTime.now();
    final start = now.subtract(const Duration(days: 6));

    final stats = await SahhaFlutter.getStatsRange(
      startDate: start,
      endDate: now,
      dataTypes: ['steps'],
    );

    // stats is usually a list of day objects
    // Convert to a list of step totals
    final List<double> result = [];

    for (var day in stats) {
      final steps = (day['steps'] ?? 0).toDouble();
      result.add(steps);
    }

    return result;
  } catch (e) {
    print("ERROR retrieving 7d steps: $e");
    return null;
  }
}
