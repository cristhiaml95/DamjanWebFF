import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/filters/filters_widget.dart';
import '/pages/components/light_mode/light_mode_widget.dart';
import '/pages/components/user_details/user_details_widget.dart';
import 'calendar_widget.dart' show CalendarWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for lightMode component.
  late LightModeModel lightModeModel;
  // Model for userDetails component.
  late UserDetailsModel userDetailsModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for filters component.
  late FiltersModel filtersModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    lightModeModel = createModel(context, () => LightModeModel());
    userDetailsModel = createModel(context, () => UserDetailsModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    filtersModel = createModel(context, () => FiltersModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    lightModeModel.dispose();
    userDetailsModel.dispose();
    filtersModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
