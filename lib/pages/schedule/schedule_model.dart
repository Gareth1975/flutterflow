import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'schedule_widget.dart' show ScheduleWidget;
import 'package:flutter/material.dart';

class ScheduleModel extends FlutterFlowModel<ScheduleWidget> {
  ///  Local state fields for this page.

  List<dynamic> activities = [];
  void addToActivities(dynamic item) => activities.add(item);
  void removeFromActivities(dynamic item) => activities.remove(item);
  void removeAtIndexFromActivities(int index) => activities.removeAt(index);
  void insertAtIndexInActivities(int index, dynamic item) =>
      activities.insert(index, item);
  void updateActivitiesAtIndex(int index, Function(dynamic) updateFn) =>
      activities[index] = updateFn(activities[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (activities)] action in Schedule widget.
  ApiCallResponse? apiResult1gx;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
