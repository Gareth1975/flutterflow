// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
// If you have the Sahha SDK in this project, uncomment and adjust this:
// import 'package:sahha_flutter/sahha_flutter.dart';

Future<bool> sahhaAuthenticateWithToken(
  String profiletoken,
  String? refreshtoken,
) async {
  // Let the web preview compile by short-circuiting on web
  if (kIsWeb) {
    debugPrint('sahhaAuthenticateWithToken: running on web, returning false');
    return false;
  }

  try {
    // If Sahha is wired up in this project, call it here:
    // await SahhaFlutter.authenticate(
    //   profileToken: profiletoken,
    //   refreshToken: refreshtoken,
    // );

    // For now we assume success if no exception is thrown
    return true;
  } catch (e, st) {
    debugPrint('Error in sahhaAuthenticateWithToken: $e\n$st');
    return false;
  }
}
