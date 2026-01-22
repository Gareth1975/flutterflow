import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkin_widget.dart' show CheckinWidget;
import 'package:flutter/material.dart';

class CheckinModel extends FlutterFlowModel<CheckinWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for painslider widget.
  double? painsliderValue;
  // State field(s) for moodslider widget.
  double? moodsliderValue;
  // State field(s) for energyslider widget.
  double? energysliderValue;
  // State field(s) for movementslider widget.
  double? movementsliderValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (checkin)] action in Button widget.
  ApiCallResponse? checkinout;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
