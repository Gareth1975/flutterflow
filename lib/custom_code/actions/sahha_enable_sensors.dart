// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
// import 'package:sahha_flutter/sahha_flutter.dart';

Future<String> sahhaEnableSensors() async {
  if (kIsWeb) {
    debugPrint('sahhaEnableSensors: running on web, returning placeholder');
    return 'web-not-supported';
  }

  try {
    // await SahhaFlutter.enableSensors();
    return 'enabled';
  } catch (e, st) {
    debugPrint('Error in sahhaEnableSensors: $e\n$st');
    return 'error';
  }
}
