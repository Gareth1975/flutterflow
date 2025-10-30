import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'device_settings_widget.dart' show DeviceSettingsWidget;
import 'package:flutter/material.dart';

class DeviceSettingsModel extends FlutterFlowModel<DeviceSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Backend Call - API (SahharegisterDevice)] action in Button widget.
  ApiCallResponse? apiResultizl;
  // Stores action output result for [Custom Action - sahhaPing] action in sahhaimport widget.
  String? sahhaPingOut;
  // Stores action output result for [Custom Action - sahhaInitSandbox] action in Button widget.
  String? sahhaInitSandboxOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
