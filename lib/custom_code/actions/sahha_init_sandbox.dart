// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// i need to config to use a sandbox enviornment  with hardcaoded values  and  authenticate and set/ enable permissions to use teh sahha.ai SDK - i have added the project dependancies
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:sahha_flutter/sahha_flutter.dart';

Future<String?> sahhaInitSandbox(String clientId) async {
  final log = StringBuffer();
  void add(String s) {
    debugPrint('[SahhaInitSandbox] $s');
    log.writeln('• $s');
  }

  // 🔐 Dev-only: hardcode sandbox creds while testing
  const appId = 'qIFCzHVb3XaQ8XEQ0HRQZoPyXxv0rbRc';
  const appSecret =
      '9MdBgudXVIfCjxUDmhjHwQ0I8Ez0ak0gxBPXTA1P5BgCmmmBDNSen1wAUa9MLtWB';
  // ⬇️ NEW: passed in from FlutterFlow
  final externalId = clientId;

  try {
    add('Configuring SDK (sandbox)…');
    final configured = await SahhaFlutter.configure(
      environment: SahhaEnvironment.sandbox,
      // Optionally specify sensors here; safe default is to omit.
      // sensors: [SahhaSensor.device],
      // Android-only optional notification settings map:
      // notificationSettings: {'icon':'ic_stat_name','title':'My App','shortDescription':'Collecting health data'}
    );
    add('Configured: $configured');
  } catch (e) {
    add('Configure failed ❌: $e');
    return log.toString();
  }

  try {
    add('Authenticating with appId/appSecret/externalId…');
    final ok = await SahhaFlutter.authenticate(
      appId: appId,
      appSecret: appSecret,
      externalId: externalId,
    );
    add('Authenticate result: $ok');
  } catch (e) {
    add('Authenticate failed ❌: $e');
    return log.toString();
  }

  // Optional: permissions/sensors, non-fatal if it varies by version
  try {
    add('Sensor status (before)…');
    const sensors = [
      SahhaSensor.sleep,
      SahhaSensor.steps,
      SahhaSensor.floors_climbed
    ];
    final before = await SahhaFlutter.getSensorStatus(sensors);
    add('Status before: $before');

    add('Enabling sensors…');
    final after = await SahhaFlutter.enableSensors(sensors);
    add('Status after: $after');
  } catch (e) {
    add('enableSensors/getSensorStatus warning ⚠️: $e');
  }

  add('Sandbox init & auth completed.');
  return log.toString();
}
