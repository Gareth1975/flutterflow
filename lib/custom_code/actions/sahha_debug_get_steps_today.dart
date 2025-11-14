// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:sahha_flutter/sahha_flutter.dart';

Future<String?> sahhaDebugGetStepsToday() async {
  try {
    final now = DateTime.now();
    final raw = await SahhaFlutter.getStats(
      sensor: SahhaSensor.steps,
      startDateTime: now,
      endDateTime: now,
    );

    // Log to console as well
    print('sahhaDebugGetStepsToday raw: $raw');

    if (raw == null) {
      return 'getStats returned null';
    }

    return raw.toString();
  } catch (e) {
    return 'ERROR from getStats: $e';
  }
}
