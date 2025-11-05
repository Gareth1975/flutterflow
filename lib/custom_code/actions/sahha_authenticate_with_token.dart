// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!



import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sahha_flutter/sahha_flutter.dart';

/// Accepts positional args because FF is calling like: sahhaAuthenticateWithToken(arg1, arg2)
Future<bool> sahhaAuthenticateWithToken(String profileToken, [String? refreshToken]) async {
  if (kIsWeb) return true; // allow web preview to compile

  try {
    // If your sahha_flutter exposes authenticateToken({profileToken, refreshToken})
    final ok = await SahhaFlutter.authenticateToken(
      profileToken: profileToken,
      // if your plugin wants a non-null refreshToken, pass empty when null
      refreshToken: refreshToken ?? '',
    );
    return ok == true;
  } catch (_) {
    return false; // must return on all paths
  }
}

