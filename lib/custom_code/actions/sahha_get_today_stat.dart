// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
// import 'package:sahha_flutter/sahha_flutter.dart';

Future<String> sahhaGetTodayStat(String? steps) async {
  if (kIsWeb) {
    debugPrint('sahhaGetTodayStat: running on web, returning placeholder');
    // You can return '0', 'n/a', whatever works for your UI
    return steps ?? '0';
  }

  try {
    // Example structure – replace with your real Sahha call:
    // final stat = await SahhaFlutter.getTodayStat(type: 'steps');
    // return stat.toString();

    // TEMP: just echo back the steps parameter or '0'
    return steps ?? '0';
  } catch (e, st) {
    debugPrint('Error in sahhaGetTodayStat: $e\n$st');
    return '0';
  }
}
