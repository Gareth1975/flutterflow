import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'programmme_widget.dart' show ProgrammmeWidget;
import 'package:flutter/material.dart';

class ProgrammmeModel extends FlutterFlowModel<ProgrammmeWidget> {
  ///  Local state fields for this page.

  int isExpanded = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getProgram)] action in Programmme widget.
  ApiCallResponse? apiprogram;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
