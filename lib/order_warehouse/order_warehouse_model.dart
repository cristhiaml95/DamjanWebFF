import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/filters/filters_widget.dart';
import '/pages/components/light_mode/light_mode_widget.dart';
import '/pages/components/user_detail/user_detail_widget.dart';
import 'order_warehouse_widget.dart' show OrderWarehouseWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class OrderWarehouseModel extends FlutterFlowModel<OrderWarehouseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for lightMode component.
  late LightModeModel lightModeModel;
  // Model for userDetail component.
  late UserDetailModel userDetailModel;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for filters component.
  late FiltersModel filtersModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    lightModeModel = createModel(context, () => LightModeModel());
    userDetailModel = createModel(context, () => UserDetailModel());
    rowController = ScrollController();
    filtersModel = createModel(context, () => FiltersModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    lightModeModel.dispose();
    userDetailModel.dispose();
    rowController?.dispose();
    filtersModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
