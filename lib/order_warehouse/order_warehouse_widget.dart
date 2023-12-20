import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/filters/filters_widget.dart';
import '/pages/components/light_mode/light_mode_widget.dart';
import '/pages/components/user_detail/user_detail_widget.dart';
import '/pages/floating/create_record/create_record_widget.dart';
import '/pages/floating/details/details_widget.dart';
import '/pages/floating/forms/forms_widget.dart';
import '/pages/floating/pdf_viewer/pdf_viewer_widget.dart';
import '/pages/floating/sure_query/sure_query_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'order_warehouse_model.dart';
export 'order_warehouse_model.dart';

class OrderWarehouseWidget extends StatefulWidget {
  const OrderWarehouseWidget({
    super.key,
    String? orderWarehouseTablesKey,
  })  : orderWarehouseTablesKey =
            orderWarehouseTablesKey ?? 'orderWarehouseTablesDefKey';

  final String orderWarehouseTablesKey;

  @override
  _OrderWarehouseWidgetState createState() => _OrderWarehouseWidgetState();
}

class _OrderWarehouseWidgetState extends State<OrderWarehouseWidget>
    with TickerProviderStateMixin {
  late OrderWarehouseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 0.5,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderWarehouseModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<List<VistaOrderLevelExtendedRow>>(
      future: FFAppState().tables(
        uniqueQueryKey: widget.orderWarehouseTablesKey,
        requestFn: () => VistaOrderLevelExtendedTable().queryRows(
          queryFn: (q) => q.order('created_at'),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<VistaOrderLevelExtendedRow>
            orderWarehouseVistaOrderLevelExtendedRowList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: MediaQuery.sizeOf(context).width <= 991.0
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    automaticallyImplyLeading: false,
                    leading: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'nob2p30m' /* Order Details */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                    actions: const [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      width: FFAppState().navOpen == true ? 270.0 : 72.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(0.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.add_task_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 32.0,
                                  ),
                                  if (FFAppState().navOpen == true)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '7l7a8zap' /* Trampuž */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.space_dashboard,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            if (FFAppState().navOpen == true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6pqsthmd' /* Dashboard */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('order_overview');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.assignment_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9hf9xgri' /* Order overview */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.table_rows_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ymel3z2o' /* Order warehouse */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('warehouse2');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.assignment_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zawl9pmf' /* Warehouse 2 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.receipt_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            if (FFAppState().navOpen == true)
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '788tskw3' /* Recent movements */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('calendar');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.calendar_today_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yyx4v0h9' /* Calendar */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().navOpen == true)
                                        Container(
                                          width: 24.0,
                                          height: 14.0,
                                          decoration: const BoxDecoration(),
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'n56wcqk0' /* Settings */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      if (FFAppState().navOpen == true)
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            height: 14.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('users');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'irx1ka9v' /* Users */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('explore');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 6.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.wifi_tethering_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              if (FFAppState().navOpen == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0wfwo1y5' /* Explore */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 50.0,
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                                  if (FFAppState().navOpen == true)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowLanguageSelector(
                                        width: 200.0,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                        borderColor: Colors.transparent,
                                        dropdownIconColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 12.0,
                                        textStyle: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13.0,
                                        ),
                                        hideFlags: false,
                                        flagSize: 24.0,
                                        flagTextGap: 16.0,
                                        currentLanguage:
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        languages: FFLocalizations.languages(),
                                        onChanged: (lang) =>
                                            setAppLanguage(context, lang),
                                      ),
                                    ),
                                  if (FFAppState().navOpen == true)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.lightModeModel,
                                        updateCallback: () => setState(() {}),
                                        child: const LightModeWidget(),
                                      ),
                                    ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            wrapWithModel(
                              model: _model.userDetailModel,
                              updateCallback: () => setState(() {}),
                              child: const UserDetailWidget(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (FFAppState().navOpen == true)
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 24.0,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().navOpen == true) {
                                        setState(() {
                                          FFAppState().navOpen = false;
                                        });
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      } else {
                                        setState(() {
                                          FFAppState().navOpen = true;
                                        });
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                              .reverse();
                                        }
                                      }
                                    },
                                    child: Icon(
                                      Icons.menu_open_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'iconOnActionTriggerAnimation']!,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: FutureBuilder<List<UsersRow>>(
                        future: FFAppState().users(
                          uniqueQueryKey: valueOrDefault<String>(
                            widget.orderWarehouseTablesKey,
                            'orderWarehouseUsersDefKey',
                          ),
                          requestFn: () => UsersTable().queryRows(
                            queryFn: (q) => q,
                          ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<UsersRow> maxWidthUsersRowList = snapshot.data!;
                          return Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: double.infinity,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      constraints: const BoxConstraints(
                                        maxWidth: double.infinity,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                          ))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 12.0, 0.0, 12.0),
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                controller:
                                                    _model.rowController,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  2.0,
                                                                  0.0,
                                                                  2.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          Icons.home_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 22.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: Container(
                                                        height: 32.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      12.0,
                                                                      4.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'u8qy2t6t' /* Order warehouse */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o4ob2bw1' /* Movements */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ite7542o' /* Below are the details of your ... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: const BoxConstraints(
                                            maxWidth: double.infinity,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'c21jfo2s' /* Filters */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value: _model.switchValue ??= false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.switchValue = newValue);
                                          },
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          activeTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveThumbColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 28.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.filtersModel
                                                    .clientDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .flowDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .orderStatusDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant6DDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .adminDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .warehouseDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .customDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .responsibleDDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant1DDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant2DDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant3DDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant4DDFValueController
                                                    ?.reset();
                                                _model.filtersModel
                                                    .assistant5DDFValueController
                                                    ?.reset();
                                              });
                                            },
                                            child: Icon(
                                              Icons.replay,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.switchValue ?? true)
                                      wrapWithModel(
                                        model: _model.filtersModel,
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: FiltersWidget(
                                          parameter1: valueOrDefault<String>(
                                            widget.orderWarehouseTablesKey,
                                            'orderWarehouseDefKey',
                                          ),
                                          parameter2: maxWidthUsersRowList
                                              .map((e) => e.id)
                                              .toList(),
                                          parameter3: maxWidthUsersRowList
                                              .map((e) => e.lastName)
                                              .toList(),
                                          parameter4: valueOrDefault<String>(
                                            widget.orderWarehouseTablesKey,
                                            'orderOverviewWarehousesDefKey',
                                          ),
                                          parameter5: valueOrDefault<String>(
                                            widget.orderWarehouseTablesKey,
                                            'orderOverviewCustomsDefKey',
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final orderLevelVar =
                                                    orderWarehouseVistaOrderLevelExtendedRowList
                                                        .where(
                                                            (e) =>
                                                                valueOrDefault<
                                                                    bool>(
                                                                  (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                                      (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != ''
                                                                          ? (e.flow ==
                                                                              _model
                                                                                  .filtersModel.flowDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != ''
                                                                          ? (e.orderStatus ==
                                                                              _model
                                                                                  .filtersModel.orderStatusDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != ''
                                                                          ? (e.admin ==
                                                                              _model
                                                                                  .filtersModel.adminDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != ''
                                                                          ? (e.warehouse ==
                                                                              _model
                                                                                  .filtersModel.warehouseDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != ''
                                                                          ? (e.custom ==
                                                                              _model
                                                                                  .filtersModel.customDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != ''
                                                                          ? (e.responsible ==
                                                                              _model
                                                                                  .filtersModel.responsibleDDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != ''
                                                                          ? (e.assistant1 ==
                                                                              _model.filtersModel.assistant1DDFValue)
                                                                          : true) &&
                                                                      (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                                      (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                                      (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                                      (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                                      (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true),
                                                                  true,
                                                                ))
                                                        .toList();
                                                return SizedBox(
                                                  width: 440.0,
                                                  height: _model.switchValue!
                                                      ? (MediaQuery.sizeOf(
                                                                  context)
                                                              .height -
                                                          418)
                                                      : (MediaQuery.sizeOf(
                                                                  context)
                                                              .height -
                                                          268),
                                                  child: DataTable2(
                                                    columns: [
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4gvv10bv' /* Delete */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                              minFontSize: 6.0,
                                                            ),
                                                          ),
                                                        ),
                                                        fixedWidth: 50.0,
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'vv1dc6qz' /* Edit */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                              minFontSize: 6.0,
                                                            ),
                                                          ),
                                                        ),
                                                        fixedWidth: 40.0,
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4ob5746w' /* Details */,
                                                              ),
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                              minFontSize: 6.0,
                                                            ),
                                                          ),
                                                        ),
                                                        fixedWidth: 50.0,
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'a85e7y4b' /* Inventory status */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                              minFontSize: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '384h2osu' /* Order No. */,
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                              minFontSize: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: AutoSizeText(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '0qc3thun' /* Client */,
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                              minFontSize: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                    rows: orderLevelVar
                                                        .mapIndexed(
                                                            (orderLevelVarIndex,
                                                                    orderLevelVarItem) =>
                                                                [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          FFAppState()
                                                                              .clearTablesCache();
                                                                          await showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                true,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: SureQueryWidget(
                                                                                    saveChangesP: () async {
                                                                                      await OrderLevelTable().delete(
                                                                                        matchingRows: (rows) => rows.eq(
                                                                                          'id',
                                                                                          orderLevelVarItem.id,
                                                                                        ),
                                                                                      );
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: const Text('Elimination'),
                                                                                            content: const Text('Row deleted successfully.'),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                child: const Text('Ok'),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .delete_forever,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          FFAppState()
                                                                              .clearTablesCache();
                                                                          await showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                true,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: FormsWidget(
                                                                                    orderId: orderLevelVarItem.id!,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .edit_square,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          FFAppState()
                                                                              .clearDetailsViewCache();
                                                                          await showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                true,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: DetailsWidget(
                                                                                    orderId: orderLevelVarItem.id!,
                                                                                    orderNo: orderLevelVarItem.orderNo!,
                                                                                    warehouseIdDetails: orderLevelVarItem.warehouse!,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onDoubleTap:
                                                                          () async {
                                                                        await _model
                                                                            .rowController
                                                                            ?.animateTo(
                                                                          _model
                                                                              .rowController!
                                                                              .position
                                                                              .maxScrollExtent,
                                                                          duration:
                                                                              const Duration(milliseconds: 100),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                      child:
                                                                          AutoSizeText(
                                                                        orderLevelVarItem
                                                                            .invStatus!,
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 10.0,
                                                                            ),
                                                                        minFontSize:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      orderLevelVarItem
                                                                          .orderNo!,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                      minFontSize:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      orderLevelVarItem
                                                                          .clientName!,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                      minFontSize:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                ]
                                                                    .map((c) =>
                                                                        DataCell(
                                                                            c))
                                                                    .toList())
                                                        .map((e) =>
                                                            DataRow(cells: e))
                                                        .toList(),
                                                    headingRowColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                    ),
                                                    headingRowHeight: 40.0,
                                                    dataRowColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                    ),
                                                    dataRowHeight: 28.0,
                                                    border: TableBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                    dividerThickness: 2.0,
                                                    columnSpacing: 2.0,
                                                    showBottomBorder: true,
                                                    minWidth: 49.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: _model.switchValue!
                                                  ? (MediaQuery.sizeOf(context)
                                                          .height -
                                                      418)
                                                  : (MediaQuery.sizeOf(context)
                                                          .height -
                                                      268),
                                              child: Stack(
                                                children: [
                                                  PageView(
                                                    controller: _model
                                                            .pageViewController ??=
                                                        PageController(
                                                            initialPage: 0),
                                                    onPageChanged: (_) =>
                                                        setState(() {}),
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final orderLevelVar4 =
                                                                orderWarehouseVistaOrderLevelExtendedRowList
                                                                    .where((e) =>
                                                                        valueOrDefault<
                                                                            bool>(
                                                                          (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                                              (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != '' ? (e.flow == _model.filtersModel.flowDDFValue) : true) &&
                                                                              (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != '' ? (e.orderStatus == _model.filtersModel.orderStatusDDFValue) : true) &&
                                                                              (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != '' ? (e.admin == _model.filtersModel.adminDDFValue) : true) &&
                                                                              (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != '' ? (e.warehouse == _model.filtersModel.warehouseDDFValue) : true) &&
                                                                              (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != '' ? (e.custom == _model.filtersModel.customDDFValue) : true) &&
                                                                              (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != '' ? (e.responsible == _model.filtersModel.responsibleDDFValue) : true) &&
                                                                              (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != '' ? (e.assistant1 == _model.filtersModel.assistant1DDFValue) : true) &&
                                                                              (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                                              (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                                              (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                                              (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                                              (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true),
                                                                          true,
                                                                        ))
                                                                    .toList();
                                                            return SizedBox(
                                                              width: double
                                                                  .infinity,
                                                              child: DataTable2(
                                                                columns: [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'sry4l4s2' /* Date (order creation) */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 8.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'h2zp4prd' /* Flow */,
                                                                          ),
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'gickv2pq' /* Order Status */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4wmpcw6p' /* Admin name */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'o2eoprgs' /* Warehouse */,
                                                                          ),
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'okurx3sq' /* Arrival Date */,
                                                                          ),
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'er3rci37' /* Time (Approx.) */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'y2nnzux4' /* Arrival */,
                                                                          ),
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '107jplnv' /* Loading Gate */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          minFontSize:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                                rows: orderLevelVar4
                                                                    .mapIndexed((orderLevelVar4Index, orderLevelVar4Item) => [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              dateTimeFormat(
                                                                                'yMMMd',
                                                                                functions.parsePostgresTimestamp(orderLevelVar4Item.createdAt!.toString()),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              orderLevelVar4Item.flow!,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              orderLevelVar4Item.orderStatus!,
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              '${orderLevelVar4Item.adminName} ${orderLevelVar4Item.adminLastName}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              orderLevelVar4Item.warehouseName!,
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              dateTimeFormat(
                                                                                'yMMMd',
                                                                                functions.parsePostgresTimestamp(orderLevelVar4Item.etaDate!.toString()),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              '${dateTimeFormat(
                                                                                'Hm',
                                                                                functions.parsePostgresTimestamp(orderLevelVar4Item.etaI!.toString()),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              )} - ${dateTimeFormat(
                                                                                'Hm',
                                                                                functions.parsePostgresTimestamp(orderLevelVar4Item.etaF!.toString()),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              )}',
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 6.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              dateTimeFormat(
                                                                                'Hm',
                                                                                functions.parsePostgresTimestamp(orderLevelVar4Item.arrival!.toString()),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 1.0,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              valueOrDefault<String>(
                                                                                orderLevelVar4Item.loadingGateRamp,
                                                                                'brez izbire',
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 11.0,
                                                                                  ),
                                                                              minFontSize: 1.0,
                                                                            ),
                                                                          ),
                                                                        ].map((c) => DataCell(c)).toList())
                                                                    .map((e) => DataRow(cells: e))
                                                                    .toList(),
                                                                headingRowColor:
                                                                    MaterialStateProperty
                                                                        .all(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                headingRowHeight:
                                                                    40.0,
                                                                dataRowColor:
                                                                    MaterialStateProperty
                                                                        .all(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                dataRowHeight:
                                                                    28.0,
                                                                border:
                                                                    TableBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                dividerThickness:
                                                                    2.0,
                                                                columnSpacing:
                                                                    2.0,
                                                                showBottomBorder:
                                                                    true,
                                                                minWidth: 49.0,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final orderLevelVar1 =
                                                              orderWarehouseVistaOrderLevelExtendedRowList
                                                                  .where((e) =>
                                                                      valueOrDefault<
                                                                          bool>(
                                                                        (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                                            (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != ''
                                                                                ? (e.flow == _model.filtersModel.flowDDFValue)
                                                                                : true) &&
                                                                            (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != '' ? (e.orderStatus == _model.filtersModel.orderStatusDDFValue) : true) &&
                                                                            (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != '' ? (e.admin == _model.filtersModel.adminDDFValue) : true) &&
                                                                            (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != '' ? (e.warehouse == _model.filtersModel.warehouseDDFValue) : true) &&
                                                                            (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != '' ? (e.custom == _model.filtersModel.customDDFValue) : true) &&
                                                                            (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != '' ? (e.responsible == _model.filtersModel.responsibleDDFValue) : true) &&
                                                                            (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != '' ? (e.assistant1 == _model.filtersModel.assistant1DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true),
                                                                        true,
                                                                      ))
                                                                  .toList();
                                                          return SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: DataTable2(
                                                              columns: [
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'twdqlob4' /* Loading Gate Sequence */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 10.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'k0zz51q8' /* Start (upload/unload) */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 10.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'u3ijaewz' /* Stop (upload/unload) */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 10.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '6n9rbllc' /* Licence plate No. */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 10.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'pny2c3gb' /* Quantity */,
                                                                        ),
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'p5k27kxl' /* Pallet position */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'wfso9jfw' /* Unit */,
                                                                        ),
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '5rw12nca' /* Weight */,
                                                                        ),
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '1t7u18tt' /* Container No. */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'oh3dt4i6' /* Improvement */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                              rows:
                                                                  orderLevelVar1
                                                                      .mapIndexed((orderLevelVar1Index,
                                                                              orderLevelVar1Item) =>
                                                                          [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.loadingSequence?.toString(),
                                                                                  'brez izbire',
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                dateTimeFormat(
                                                                                  'Hm',
                                                                                  functions.parsePostgresTimestamp(orderLevelVar1Item.start!.toString()),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                dateTimeFormat(
                                                                                  'Hm',
                                                                                  functions.parsePostgresTimestamp(orderLevelVar1Item.stop!.toString()),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.licencePlate,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 6.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.quantity?.toString(),
                                                                                  '-1',
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 6.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.palletPosition?.toString(),
                                                                                  '-1',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.unit?.toString(),
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 6.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        orderLevelVar1Item.weight?.toString(),
                                                                                        '-1',
                                                                                      ),
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto',
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                      minFontSize: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.containerNo,
                                                                                  'brez izbire',
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar1Item.improvement,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                          ]
                                                                              .map((c) => DataCell(
                                                                                  c))
                                                                              .toList())
                                                                      .map((e) =>
                                                                          DataRow(
                                                                              cells: e))
                                                                      .toList(),
                                                              headingRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              headingRowHeight:
                                                                  40.0,
                                                              dataRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              dataRowHeight:
                                                                  28.0,
                                                              border:
                                                                  TableBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              dividerThickness:
                                                                  2.0,
                                                              columnSpacing:
                                                                  2.0,
                                                              showBottomBorder:
                                                                  true,
                                                              minWidth: 49.0,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final orderLevelVar2 =
                                                              orderWarehouseVistaOrderLevelExtendedRowList
                                                                  .where((e) =>
                                                                      valueOrDefault<
                                                                          bool>(
                                                                        (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                                            (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != ''
                                                                                ? (e.flow == _model.filtersModel.flowDDFValue)
                                                                                : true) &&
                                                                            (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != '' ? (e.orderStatus == _model.filtersModel.orderStatusDDFValue) : true) &&
                                                                            (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != '' ? (e.admin == _model.filtersModel.adminDDFValue) : true) &&
                                                                            (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != '' ? (e.warehouse == _model.filtersModel.warehouseDDFValue) : true) &&
                                                                            (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != '' ? (e.custom == _model.filtersModel.customDDFValue) : true) &&
                                                                            (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != '' ? (e.responsible == _model.filtersModel.responsibleDDFValue) : true) &&
                                                                            (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != '' ? (e.assistant1 == _model.filtersModel.assistant1DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true),
                                                                        true,
                                                                      ))
                                                                  .toList();
                                                          return SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: DataTable2(
                                                              columns: [
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3u4edcpm' /* Customs */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'qc2c841j' /* Responsible */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'drgh0quh' /* Assistant 1 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'phc78vbh' /* Assistant 2 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ewtsb710' /* Assistant 3 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'm8f7rl8o' /* Assistant 4 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'mey6rg8c' /* Assistant 5 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'lbqpqfz8' /* Assistant 6 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'utcyzk8v' /* FMS ref */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'zixsjgyz' /* Load ref/dvh */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                              rows:
                                                                  orderLevelVar2
                                                                      .mapIndexed((orderLevelVar2Index,
                                                                              orderLevelVar2Item) =>
                                                                          [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar2Item.customName,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.responsibleName} ${orderLevelVar2Item.responsibleLastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant1Name} ${orderLevelVar2Item.assistant1LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant2Name} ${orderLevelVar2Item.assistant2LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant3Name} ${orderLevelVar2Item.assistant3LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 6.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant4Name} ${orderLevelVar2Item.assistant4LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant5Name} ${orderLevelVar2Item.assistant5LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                '${orderLevelVar2Item.assistant6Name} ${orderLevelVar2Item.assistant6LastName}',
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar2Item.fmsRef,
                                                                                  'brez izbire',
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar2Item.loadRefDvh,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                          ]
                                                                              .map((c) => DataCell(
                                                                                  c))
                                                                              .toList())
                                                                      .map((e) =>
                                                                          DataRow(
                                                                              cells: e))
                                                                      .toList(),
                                                              headingRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              headingRowHeight:
                                                                  40.0,
                                                              dataRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              dataRowHeight:
                                                                  28.0,
                                                              border:
                                                                  TableBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              dividerThickness:
                                                                  2.0,
                                                              columnSpacing:
                                                                  2.0,
                                                              showBottomBorder:
                                                                  true,
                                                              minWidth: 49.0,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final orderLevelVar3 =
                                                              orderWarehouseVistaOrderLevelExtendedRowList
                                                                  .where((e) =>
                                                                      valueOrDefault<
                                                                          bool>(
                                                                        (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                                            (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != ''
                                                                                ? (e.flow == _model.filtersModel.flowDDFValue)
                                                                                : true) &&
                                                                            (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != '' ? (e.orderStatus == _model.filtersModel.orderStatusDDFValue) : true) &&
                                                                            (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != '' ? (e.admin == _model.filtersModel.adminDDFValue) : true) &&
                                                                            (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != '' ? (e.warehouse == _model.filtersModel.warehouseDDFValue) : true) &&
                                                                            (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != '' ? (e.custom == _model.filtersModel.customDDFValue) : true) &&
                                                                            (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != '' ? (e.responsible == _model.filtersModel.responsibleDDFValue) : true) &&
                                                                            (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != '' ? (e.assistant1 == _model.filtersModel.assistant1DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                                            (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true),
                                                                        true,
                                                                      ))
                                                                  .toList();
                                                          return SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: DataTable2(
                                                              columns: [
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '562co4jx' /* Damaged mark */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '1hc1vf7y' /* Universal ref num */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'iazw9p52' /* Comment */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3p6jbq5v' /* Other manipulations */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ud48yked' /* Type of un/upload */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'um0q5laq' /* Type of un/upload 2 */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'k01662rj' /* Documents */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'dysnvqy2' /* Internal number - accounting */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'qzslen50' /* Internal reference number - cu... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: 12.0,
                                                                            ),
                                                                        minFontSize:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                              rows:
                                                                  orderLevelVar3
                                                                      .mapIndexed((orderLevelVar3Index,
                                                                              orderLevelVar3Item) =>
                                                                          [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.damageMark,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.universalRefNo,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.comment,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.otherManipulation,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.loadingType,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.loadingType2,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 1.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Builder(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await showAlignedDialog(
                                                                                      context: context,
                                                                                      isGlobal: true,
                                                                                      avoidOverflow: false,
                                                                                      targetAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      builder: (dialogContext) {
                                                                                        return Material(
                                                                                          color: Colors.transparent,
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: PdfViewerWidget(
                                                                                              pdfLink: valueOrDefault<String>(
                                                                                                orderLevelVar3Item.document,
                                                                                                'https://aaxptvfturwawmigxwgq.supabase.co/storage/v1/object/public/documents/noPdf.pdf',
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => setState(() {}));
                                                                                  },
                                                                                  child: Icon(
                                                                                    Icons.picture_as_pdf_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.internalAccounting,
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                minFontSize: 6.0,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  orderLevelVar3Item.internalRefCustom?.toString(),
                                                                                  'brez izbire',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ]
                                                                              .map((c) => DataCell(
                                                                                  c))
                                                                              .toList())
                                                                      .map((e) =>
                                                                          DataRow(
                                                                              cells: e))
                                                                      .toList(),
                                                              headingRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              headingRowHeight:
                                                                  40.0,
                                                              dataRowColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              dataRowHeight:
                                                                  28.0,
                                                              border:
                                                                  TableBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              dividerThickness:
                                                                  2.0,
                                                              columnSpacing:
                                                                  2.0,
                                                              showBottomBorder:
                                                                  true,
                                                              minWidth: 49.0,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: smooth_page_indicator
                                                          .SmoothPageIndicator(
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                        count: 4,
                                                        axisDirection:
                                                            Axis.horizontal,
                                                        onDotClicked:
                                                            (i) async {
                                                          await _model
                                                              .pageViewController!
                                                              .animateToPage(
                                                            i,
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    500),
                                                            curve: Curves.ease,
                                                          );
                                                        },
                                                        effect: smooth_page_indicator
                                                            .ExpandingDotsEffect(
                                                          expansionFactor: 3.0,
                                                          spacing: 8.0,
                                                          radius: 16.0,
                                                          dotWidth: 16.0,
                                                          dotHeight: 8.0,
                                                          dotColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent1,
                                                          activeDotColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          paintStyle:
                                                              PaintingStyle
                                                                  .fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]
                                            .addToStart(const SizedBox(width: 0.0))
                                            .addToEnd(const SizedBox(width: 0.0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 28.0, 28.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 28.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().clearTablesCache();
                                            setState(() {
                                              _model.filtersModel
                                                  .clientDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .flowDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .orderStatusDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant6DDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .adminDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .warehouseDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .customDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .responsibleDDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant1DDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant2DDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant3DDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant4DDFValueController
                                                  ?.reset();
                                              _model.filtersModel
                                                  .assistant5DDFValueController
                                                  ?.reset();
                                            });
                                          },
                                          child: Icon(
                                            Icons.restore_page_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await showAlignedDialog(
                                              context: context,
                                              isGlobal: true,
                                              avoidOverflow: false,
                                              targetAnchor:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              followerAnchor:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              builder: (dialogContext) {
                                                return Material(
                                                  color: Colors.transparent,
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: const CreateRecordWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'gzx8lf20' /* Create new record */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Roboto',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
