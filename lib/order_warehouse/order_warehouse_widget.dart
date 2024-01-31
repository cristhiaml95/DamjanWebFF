import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/light_mode/light_mode_widget.dart';
import '/pages/components/user_details/user_details_widget.dart';
import '/pages/floating/create_record/create_record_widget.dart';
import '/pages/floating/details/details_widget.dart';
import '/pages/floating/documents/documents_widget.dart';
import '/pages/floating/forms/forms_widget.dart';
import '/pages/floating/sure_query/sure_query_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
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
  }) : orderWarehouseTablesKey =
            orderWarehouseTablesKey ?? 'orderWarehouseTablesDefKey';

  final String orderWarehouseTablesKey;

  @override
  State<OrderWarehouseWidget> createState() => _OrderWarehouseWidgetState();
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

    return FutureBuilder<List<UsersRow>>(
      future: FFAppState().users2(
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
        List<UsersRow> orderWarehouseUsersRowList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                              model: _model.userDetailsModel,
                              updateCallback: () => setState(() {}),
                              child: UserDetailsWidget(
                                userDetail: orderWarehouseUsersRowList
                                    .where((e) => e.id == currentUserUid)
                                    .toList()
                                    .first,
                              ),
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
                      child: FutureBuilder<List<VistaOrderLevelExtendedRow>>(
                        future: FFAppState().tables(
                          uniqueQueryKey: valueOrDefault<String>(
                            widget.orderWarehouseTablesKey,
                            'orderWarehouseUsersDefKey',
                          ),
                          requestFn: () =>
                              VistaOrderLevelExtendedTable().queryRows(
                            queryFn: (q) => q.order('crono'),
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
                          List<VistaOrderLevelExtendedRow>
                              maxWidthVistaOrderLevelExtendedRowList =
                              snapshot.data!;
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    0.0, 0.0, 28.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o4ob2bw1' /* Movements */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ite7542o' /* Below are the details of your ... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final fixedColumnsVar =
                                                          _model.fixedColumns
                                                              .toList();
                                                      return SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: SizedBox(
                                                          width: 300.0,
                                                          height: 68.0,
                                                          child: DataTable2(
                                                            columns: [
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '8hbwbaea' /* Inventory status */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                10.0,
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
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '2edqbygl' /* Order No. */,
                                                                      ),
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                10.0,
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
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'wf2m2don' /* Client */,
                                                                      ),
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      minFontSize:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            rows:
                                                                fixedColumnsVar
                                                                    .mapIndexed((fixedColumnsVarIndex,
                                                                            fixedColumnsVarItem) =>
                                                                        [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              valueOrDefault<String>(
                                                                                fixedColumnsVarItem.invStatus,
                                                                                'brez izbire',
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 10.0,
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
                                                                                fixedColumnsVarItem.orderNo,
                                                                                'brez izbire',
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 10.0,
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
                                                                                fixedColumnsVarItem.client,
                                                                                'brez izbire',
                                                                              ).maybeHandleOverflow(
                                                                                maxChars: 20,
                                                                                replacement: '…',
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
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
                                                                            cells:
                                                                                e))
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
                                                            dataRowHeight: 28.0,
                                                            border: TableBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            dividerThickness:
                                                                2.0,
                                                            columnSpacing: 0.0,
                                                            showBottomBorder:
                                                                true,
                                                            minWidth: 49.0,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'vby0x9b5' /* Restart filter */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model
                                                                  .orderNoDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .clientDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .invStatusDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .warehouseDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .orderStatusDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .flowDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .licenceDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .containerNoDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .improvementDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .barcodesDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .palletPositionDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .uniRefNumDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .fmsRefDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .loadRefDvhDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .customDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .goodDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .goodDescriptionDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant1DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant2DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant3DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant4DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant5DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .assistant6DDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .adminDDValueController
                                                                  ?.reset();
                                                              _model
                                                                  .intCustomDDValueController
                                                                  ?.reset();
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.replay,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.orderNoB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .orderNoDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.orderNo)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.orderNoDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        't1e4026r' /* Order no... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '1vn0gxuk' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.clientB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .clientDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.clientName)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.clientDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'clivrzxm' /* Client... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'rdg5t5y7' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .invStatusB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .invStatusDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'tszmj5q2' /* najava */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'viu9xfrr' /* obdelava */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'zdjt7sif' /* izdano */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7fyboij5' /* zaloga */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'vxwqk2st' /* brez izbire */,
                                                                        )
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.invStatusDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'ufnkef3y' /* Inv status... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .warehouseB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .warehouseDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.warehouseName)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.warehouseDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'x8sexy6h' /* Warehouse... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .orderStatusB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .orderStatusDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'rw1h2lnw' /* novo naročilo */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'afm40mj0' /* priprava */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'gznbuj1a' /* izvajanje */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'xlhk5a57' /* zaključeno */,
                                                                        )
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.orderStatusDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '5fo79qka' /* Order status... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    182.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.flowB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .flowDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'lerv15km' /* in-razklad */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'mx4nappr' /* out-naklad */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7qbhjy8a' /* brez izbire */,
                                                                        )
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.flowDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'gnmdrsee' /* Flow... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    302.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.licenceB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .licenceDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.licencePlate)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.licenceDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '2te73hg8' /* Licence... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'vko62rfx' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .containerNoB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .containerNoDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.containerNo)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.containerNoDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'kc7wwosv' /* Container No... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '4iy5aj7m' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    342.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .improvementB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .improvementDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.improvement)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.improvementDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'zreco1ft' /* Improvement... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'hczftguk' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.barcodeB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            DetailsViewRow>>(
                                                                      future: DetailsViewTable()
                                                                          .queryRows(
                                                                        queryFn:
                                                                            (q) =>
                                                                                q,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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
                                                                        List<DetailsViewRow>
                                                                            barcodesDDDetailsViewRowList =
                                                                            snapshot.data!;
                                                                        return FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.barcodesDDValueController ??=
                                                                              FormFieldController<String>(null),
                                                                          options: functions.noRepeated(barcodesDDDetailsViewRowList
                                                                              .map((e) => e.barcode)
                                                                              .withoutNulls
                                                                              .toList()),
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.barcodesDDValue = val);
                                                                            setState(() {
                                                                              FFAppState().idsFromBarcodes = functions.noRepeated(barcodesDDDetailsViewRowList.where((e) => e.barcode == _model.barcodesDDValue).toList().map((e) => e.orderId).withoutNulls.toList()).toList().cast<String>();
                                                                            });
                                                                          },
                                                                          width:
                                                                              136.0,
                                                                          height:
                                                                              40.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          searchTextStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                          hintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'fl5g7rc1' /* Barcodes... */,
                                                                          ),
                                                                          searchHintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'jgen1b8m' /* Search for an item... */,
                                                                          ),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          borderWidth:
                                                                              2.0,
                                                                          borderRadius:
                                                                              8.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                          isMultiSelect:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    142.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .palletPositionB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .palletPositionDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(functions
                                                                          .intToStringList(maxWidthVistaOrderLevelExtendedRowList
                                                                              .map((e) => e.palletPosition)
                                                                              .withoutNulls
                                                                              .toList())
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.palletPositionDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'rqclg2od' /* Pallet position... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        't91jdoq0' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .universalRefNumB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .uniRefNumDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.universalRefNo)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.uniRefNumDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'htg0lv7w' /* Universal ref... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'aiwhevo9' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.fmsRefB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .fmsRefDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.fmsRef)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.fmsRefDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '8jwv16hc' /* FMS ref... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '6izep0oi' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .loadRefDvhB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .loadRefDvhDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.loadRefDvh)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.loadRefDvhDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'qikue3ho' /* Load ref dvh... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'e5t2shb6' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.customB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .customDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.customName)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.customDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'plsu8elq' /* Custom... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'dniai3eg' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    498.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.goodB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .goodDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.item)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.goodDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'qiebwcdb' /* Good... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '2xi4dda2' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .goodDescriptionB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .goodDescriptionDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(maxWidthVistaOrderLevelExtendedRowList
                                                                          .map((e) =>
                                                                              e.opisBlaga)
                                                                          .withoutNulls
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.goodDescriptionDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '7naroqe7' /* Good description... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'wdhm895k' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    656.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant1B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant1DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant1DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant1DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'j2qk61yw' /* Assistant 1... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant2B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant2DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant2DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant2DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '2oi64ogh' /* Assistant 2... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant3B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant3DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant3DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant3DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'j6db1czr' /* Assistant 3... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant4B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant4DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant4DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant4DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'zudx0hy1' /* Assistant 4... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant5B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant5DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant5DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant5DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'hyphrfrt' /* Assistant 5... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .assistant6B,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .assistant6DDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.assistant6DDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.assistant6DDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'evjfqmvc' /* Assistant 6... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    22.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible:
                                                                _model.adminB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .adminDDValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.adminDDValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(orderWarehouseUsersRowList
                                                                          .where((e) =>
                                                                              e.userType ==
                                                                              'administrator')
                                                                          .toList()
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: orderWarehouseUsersRowList
                                                                          .where((e) =>
                                                                              e.userType ==
                                                                              'administrator')
                                                                          .toList()
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.adminDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'wl11dn59' /* Admin... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    104.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 136.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Visibility(
                                                            visible: _model
                                                                .intCustomB,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .intCustomDDValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: functions.noRepeated(functions
                                                                          .intToStringList(maxWidthVistaOrderLevelExtendedRowList
                                                                              .map((e) => e.internalRefCustom)
                                                                              .withoutNulls
                                                                              .toList())
                                                                          .toList()),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.intCustomDDValue = val),
                                                                      width:
                                                                          136.0,
                                                                      height:
                                                                          40.0,
                                                                      searchHintTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      searchTextStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontSize:
                                                                                11.0,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'x2zcwtqx' /* Int custom... */,
                                                                      ),
                                                                      searchHintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'hu8poh9s' /* Search for an item... */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_double_arrow_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final orderLevelVar4 =
                                                        maxWidthVistaOrderLevelExtendedRowList
                                                            .where((e) =>
                                                                valueOrDefault<
                                                                    bool>(
                                                                  (_model.clientDDValue != null && _model.clientDDValue != '' ? (e.client == _model.clientDDValue) : true) &&
                                                                      (_model.flowDDValue != null && _model.flowDDValue != ''
                                                                          ? (e.flow ==
                                                                              _model
                                                                                  .flowDDValue)
                                                                          : true) &&
                                                                      (_model.orderStatusDDValue != null && _model.orderStatusDDValue != ''
                                                                          ? (e.orderStatus ==
                                                                              _model
                                                                                  .orderStatusDDValue)
                                                                          : true) &&
                                                                      (_model.orderNoDDValue != null && _model.orderNoDDValue != ''
                                                                          ? (e.orderNo ==
                                                                              _model
                                                                                  .orderNoDDValue)
                                                                          : true) &&
                                                                      (_model.warehouseDDValue != null && _model.warehouseDDValue != ''
                                                                          ? (e.warehouse ==
                                                                              _model
                                                                                  .warehouseDDValue)
                                                                          : true) &&
                                                                      (_model.customDDValue != null && _model.customDDValue != ''
                                                                          ? (e.custom ==
                                                                              _model
                                                                                  .customDDValue)
                                                                          : true) &&
                                                                      (_model.adminDDValue != null && _model.adminDDValue != ''
                                                                          ? (e.admin ==
                                                                              _model
                                                                                  .adminDDValue)
                                                                          : true) &&
                                                                      (_model.assistant1DDValue != null && _model.assistant1DDValue != ''
                                                                          ? (e.assistant1 ==
                                                                              _model
                                                                                  .assistant1DDValue)
                                                                          : true) &&
                                                                      (_model.assistant2DDValue != null && _model.assistant2DDValue != ''
                                                                          ? (e.assistant2 ==
                                                                              _model
                                                                                  .assistant2DDValue)
                                                                          : true) &&
                                                                      (_model.assistant3DDValue != null && _model.assistant3DDValue != ''
                                                                          ? (e.assistant3 ==
                                                                              _model
                                                                                  .assistant3DDValue)
                                                                          : true) &&
                                                                      (_model.assistant5DDValue != null && _model.assistant5DDValue != ''
                                                                          ? (e.assistant5 == _model.assistant5DDValue)
                                                                          : true) &&
                                                                      (_model.assistant4DDValue != null && _model.assistant4DDValue != '' ? (e.assistant4 == _model.assistant4DDValue) : true) &&
                                                                      (_model.assistant6DDValue != null && _model.assistant6DDValue != '' ? (e.assistant6 == _model.assistant6DDValue) : true) &&
                                                                      (_model.containerNoDDValue != null && _model.containerNoDDValue != '' ? (e.containerNo == _model.containerNoDDValue) : true) &&
                                                                      (_model.barcodesDDValue != null && _model.barcodesDDValue != '' ? FFAppState().idsFromBarcodes.contains(e.id) : true),
                                                                  true,
                                                                ))
                                                            .toList();
                                                    return SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: SizedBox(
                                                        width: 7000.0,
                                                        height: (_model.orderNoB == true) ||
                                                                (_model.clientB ==
                                                                    true) ||
                                                                (_model.flowB ==
                                                                    true) ||
                                                                _model
                                                                    .invStatusB ||
                                                                (_model.warehouseB ==
                                                                    true) ||
                                                                (_model.orderStatusB ==
                                                                    true) ||
                                                                (_model.licenceB ==
                                                                    true) ||
                                                                (_model.improvementB ==
                                                                    true) ||
                                                                (_model.palletPositionB ==
                                                                    true) ||
                                                                (_model.universalRefNumB ==
                                                                    true) ||
                                                                (_model.fmsRefB ==
                                                                    true) ||
                                                                (_model.loadRefDvhB ==
                                                                    true) ||
                                                                (_model.customB ==
                                                                    true) ||
                                                                (_model.goodB ==
                                                                    true) ||
                                                                (_model.goodDescriptionB ==
                                                                    true) ||
                                                                (_model.assistant1B ==
                                                                    true) ||
                                                                _model
                                                                    .assistant2B ||
                                                                _model
                                                                    .assistant3B ||
                                                                _model
                                                                    .assistant4B ||
                                                                _model
                                                                    .assistant5B ||
                                                                _model
                                                                    .assistant6B ||
                                                                _model.adminB ||
                                                                _model
                                                                    .barcodeB ||
                                                                _model
                                                                    .intCustomB ||
                                                                _model
                                                                    .containerNoB
                                                            ? (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height -
                                                                368)
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height -
                                                                328),
                                                        child: DataTable2(
                                                          columns: [
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'k6lov7ww' /* Delete */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'evi9in41' /* Edit */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            40.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'hoy7rlp0' /* Details */,
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                          minFontSize:
                                                                              6.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '08ki9qmp' /* Order No. */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.orderNoB) {
                                                                                setState(() {
                                                                                  _model.orderNoB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.orderNoB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.orderNoB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'dny2e8du' /* Client */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.clientB) {
                                                                                setState(() {
                                                                                  _model.clientB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.clientB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.clientB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'va7lnqmq' /* Inv status */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.invStatusB) {
                                                                                setState(() {
                                                                                  _model.invStatusB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.invStatusB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.invStatusB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'idi3idc7' /* Warehouse */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.warehouseB) {
                                                                                setState(() {
                                                                                  _model.warehouseB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.warehouseB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.warehouseB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'rsae1fsi' /* Order status */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.orderStatusB) {
                                                                                setState(() {
                                                                                  _model.orderStatusB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.orderStatusB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.orderStatusB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'yrwmmxa1' /* Arrival Date */,
                                                                    ),
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'z2r2jvqb' /* Flow */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.flowB) {
                                                                                setState(() {
                                                                                  _model.flowB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.flowB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.flowB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'q98ghyb3' /* Accept */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                    minFontSize:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7gemkjns' /* Pre-Check */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                    minFontSize:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'xdhsr81b' /* Check */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                    minFontSize:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'swktm00b' /* Time (Approx.) */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '0y52gjse' /* Licence */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.licenceB) {
                                                                                setState(() {
                                                                                  _model.licenceB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.licenceB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.licenceB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'vhbrbvvq' /* Container No. */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.containerNoB) {
                                                                                setState(() {
                                                                                  _model.containerNoB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.containerNoB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.containerNoB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '9e86gncc' /* Arrival */,
                                                                    ),
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'qynxxr1g' /* Loading Gate */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'bcuecmt0' /* Improvement */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.improvementB) {
                                                                                setState(() {
                                                                                  _model.improvementB = false;
                                                                                });
                                                                                return;
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.improvementB = false;
                                                                                });
                                                                                return;
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.improvementB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  'Unit (${(valueOrDefault<int>(
                                                                                        functions.sumList(orderLevelVar4.where((e) => e.flow == 'in-razklad').toList().map((e) => e.details).withoutNulls.toList()),
                                                                                        0,
                                                                                      ) - valueOrDefault<int>(
                                                                                        functions.sumList(orderLevelVar4.where((e) => e.flow == 'out-naklad').toList().map((e) => e.details).withoutNulls.toList()),
                                                                                        0,
                                                                                      )).toString()})',
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.barcodeB) {
                                                                                setState(() {
                                                                                  _model.barcodeB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.barcodeB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.barcodeB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'c42oamsg' /* Weight */,
                                                                    ),
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                    minFontSize:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 120.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '7cvcxhoc' /* Pallet position */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.palletPositionB) {
                                                                                setState(() {
                                                                                  _model.palletPositionB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.palletPositionB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.palletPositionB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2lv1iri6' /* Universal ref num */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.universalRefNumB) {
                                                                                setState(() {
                                                                                  _model.universalRefNumB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.universalRefNumB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.universalRefNumB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'mmsvnlvc' /* FMS ref */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.fmsRefB) {
                                                                                setState(() {
                                                                                  _model.fmsRefB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.fmsRefB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.orderNoB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '0w1tlptn' /* Load ref dvh */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.loadRefDvhB) {
                                                                                setState(() {
                                                                                  _model.loadRefDvhB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.loadRefDvhB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.loadRefDvhB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '6i8s2u5t' /* Custom */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.customB) {
                                                                                setState(() {
                                                                                  _model.customB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.customB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.customB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'u1hxhkai' /* Comment */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '4lblqdot' /* Documents */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0cj8x94a' /* Damaged mark */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'aqwaaih2' /* Good */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.goodB) {
                                                                                setState(() {
                                                                                  _model.goodB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.goodB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.goodB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'jzs8g8cs' /* Good description */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.goodDescriptionB) {
                                                                                setState(() {
                                                                                  _model.goodDescriptionB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.goodDescriptionB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.goodDescriptionB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '3hx1j4ve' /* Type of un/upload */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '61b0y3sd' /* Type of un/upload 2 */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'nz043www' /* Other manipulations */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'kevanc7b' /* Responsible */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'rmhtaqkf' /* Assistant 1 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant1B) {
                                                                                setState(() {
                                                                                  _model.assistant1B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant1B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant1B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2b25q5gb' /* Assistant 2 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant2B) {
                                                                                setState(() {
                                                                                  _model.assistant2B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant2B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant2B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'a9flzvr3' /* Assistant 3 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant3B) {
                                                                                setState(() {
                                                                                  _model.assistant3B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant3B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant3B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'znvrw0l8' /* Assistant 4 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant4B) {
                                                                                setState(() {
                                                                                  _model.assistant4B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant4B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant4B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'oiz0ga5u' /* Assistant 5 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant5B) {
                                                                                setState(() {
                                                                                  _model.assistant5B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant5B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant5B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ype0m9ej' /* Assistant 6 */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.assistant6B) {
                                                                                setState(() {
                                                                                  _model.assistant6B = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.assistant6B = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.assistant6B ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'd59v9ris' /* Admin */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.adminB) {
                                                                                setState(() {
                                                                                  _model.adminB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.adminB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.adminB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    'Quantity (${(valueOrDefault<int>(
                                                                          functions.sumList(orderLevelVar4
                                                                              .where((e) => e.flow == 'in-razklad')
                                                                              .toList()
                                                                              .map((e) => e.quantity)
                                                                              .withoutNulls
                                                                              .toList()),
                                                                          0,
                                                                        ) - valueOrDefault<int>(
                                                                          functions.sumList(orderLevelVar4
                                                                              .where((e) => e.flow == 'out-naklad')
                                                                              .toList()
                                                                              .map((e) => e.quantity)
                                                                              .withoutNulls
                                                                              .toList()),
                                                                          0,
                                                                        )).toString()})',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                    minFontSize:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 80.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ollpduqm' /* Int custom */,
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                                              if (_model.intCustomB) {
                                                                                setState(() {
                                                                                  _model.intCustomB = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.intCustomB = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.filter_list,
                                                                              color: _model.intCustomB ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'xvxnxu1w' /* Internal number - accounting */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bdswfq95' /* Packaging */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              12.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lfus1ju6' /* Loading Gate Sequence */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              10.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'et4uj39z' /* Date (order creation) */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              8.0,
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
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      's6xvznpq' /* Details */,
                                                                    ),
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bv43iyyt' /* Edit */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'm5coggv4' /* Copy */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                            DataColumn2(
                                                              label:
                                                                  DefaultTextStyle
                                                                      .merge(
                                                                softWrap: true,
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '9k3ojd6v' /* Delete */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    minFontSize:
                                                                        6.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              fixedWidth: 40.0,
                                                            ),
                                                          ],
                                                          rows: orderLevelVar4
                                                              .mapIndexed((orderLevelVar4Index,
                                                                      orderLevelVar4Item) =>
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
                                                                            FFAppState().clearTablesCache();
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: SureQueryWidget(
                                                                                      saveChangesP: () async {
                                                                                        await OrderLevelTable().delete(
                                                                                          matchingRows: (rows) => rows.eq(
                                                                                            'id',
                                                                                            orderLevelVar4Item.id,
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
                                                                            Icons.delete_forever,
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
                                                                            FFAppState().clearTablesCache();
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: FormsWidget(
                                                                                      orderId: orderLevelVar4Item.id!,
                                                                                      formsKey: '',
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.edit_square,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40.0,
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  FFAppState().clearDetailsViewCache();
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: DetailsWidget(
                                                                                            orderId: orderLevelVar4Item.id!,
                                                                                            orderNo: orderLevelVar4Item.orderNo!,
                                                                                            warehouseIdDetails: orderLevelVar4Item.warehouse!,
                                                                                            barcode: _model.barcodesDDValue != null && _model.barcodesDDValue != '' ? _model.barcodesDDValue : '',
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.more_vert,
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  orderLevelVar4Item.orderNo!.maybeHandleOverflow(
                                                                                    maxChars: 12,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  orderLevelVar4Item.clientName!.maybeHandleOverflow(
                                                                                    maxChars: 12,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onDoubleTap: () async {
                                                                                    setState(() {
                                                                                      _model.fixedColumns = [];
                                                                                    });
                                                                                    setState(() {
                                                                                      _model.addToFixedColumns(FixedColumnsStruct(
                                                                                        invStatus: orderLevelVar4Item.invStatus,
                                                                                        orderNo: orderLevelVar4Item.orderNo,
                                                                                        client: orderLevelVar4Item.clientName,
                                                                                      ));
                                                                                      _model.selectedIndex = orderLevelVar4Index;
                                                                                    });
                                                                                  },
                                                                                  child: AutoSizeText(
                                                                                    orderLevelVar4Item.invStatus!,
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                    minFontSize: 6.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  orderLevelVar4Item.warehouseName!,
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: Text(
                                                                                  orderLevelVar4Item.orderStatus!,
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 11.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.fixedColumns = [];
                                                                              });
                                                                              setState(() {
                                                                                _model.addToFixedColumns(FixedColumnsStruct(
                                                                                  invStatus: orderLevelVar4Item.invStatus,
                                                                                  orderNo: orderLevelVar4Item.orderNo,
                                                                                  client: orderLevelVar4Item.clientName,
                                                                                ));
                                                                                _model.selectedIndex = orderLevelVar4Index;
                                                                              });
                                                                            },
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
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  orderLevelVar4Item.flow!,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 11.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        child:
                                                                            Stack(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          children: [
                                                                            if (!orderLevelVar4Item.acepted!)
                                                                              Icon(
                                                                                Icons.close_outlined,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            if (orderLevelVar4Item.acepted ??
                                                                                true)
                                                                              Icon(
                                                                                Icons.check_circle_outline,
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                size: 24.0,
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        child:
                                                                            Stack(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          children: [
                                                                            if (!orderLevelVar4Item.precheck!)
                                                                              Icon(
                                                                                Icons.close_outlined,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            if (orderLevelVar4Item.precheck ??
                                                                                true)
                                                                              Icon(
                                                                                Icons.check_circle,
                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                size: 24.0,
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        child:
                                                                            Stack(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          children: [
                                                                            if (!orderLevelVar4Item.checked!)
                                                                              Icon(
                                                                                Icons.close_outlined,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            if (orderLevelVar4Item.checked ??
                                                                                true)
                                                                              Icon(
                                                                                Icons.check_circle,
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                size: 24.0,
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.fixedColumns = [];
                                                                              });
                                                                              setState(() {
                                                                                _model.addToFixedColumns(FixedColumnsStruct(
                                                                                  invStatus: orderLevelVar4Item.invStatus,
                                                                                  orderNo: orderLevelVar4Item.orderNo,
                                                                                  client: orderLevelVar4Item.clientName,
                                                                                ));
                                                                                _model.selectedIndex = orderLevelVar4Index;
                                                                              });
                                                                            },
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
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.licencePlate,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(text: orderLevelVar4Item.licencePlate!));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onDoubleTap: () async {
                                                                                    setState(() {
                                                                                      _model.fixedColumns = [];
                                                                                    });
                                                                                    setState(() {
                                                                                      _model.addToFixedColumns(FixedColumnsStruct(
                                                                                        invStatus: orderLevelVar4Item.invStatus,
                                                                                        orderNo: orderLevelVar4Item.orderNo,
                                                                                        client: orderLevelVar4Item.clientName,
                                                                                      ));
                                                                                      _model.selectedIndex = orderLevelVar4Index;
                                                                                    });
                                                                                  },
                                                                                  child: AutoSizeText(
                                                                                    valueOrDefault<String>(
                                                                                      orderLevelVar4Item.containerNo,
                                                                                      'brez izbire',
                                                                                    ).maybeHandleOverflow(
                                                                                      maxChars: 10,
                                                                                      replacement: '…',
                                                                                    ),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                    minFontSize: 1.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(text: orderLevelVar4Item.containerNo!));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onDoubleTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.fixedColumns = [];
                                                                            });
                                                                            setState(() {
                                                                              _model.addToFixedColumns(FixedColumnsStruct(
                                                                                invStatus: orderLevelVar4Item.invStatus,
                                                                                orderNo: orderLevelVar4Item.orderNo,
                                                                                client: orderLevelVar4Item.clientName,
                                                                              ));
                                                                              _model.selectedIndex = orderLevelVar4Index;
                                                                            });
                                                                          },
                                                                          child:
                                                                              AutoSizeText(
                                                                            dateTimeFormat(
                                                                              'Hm',
                                                                              functions.parsePostgresTimestamp(orderLevelVar4Item.arrival!.toString()),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  fontSize: 11.0,
                                                                                ),
                                                                            minFontSize:
                                                                                1.0,
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.improvement,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onDoubleTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.fixedColumns = [];
                                                                            });
                                                                            setState(() {
                                                                              _model.addToFixedColumns(FixedColumnsStruct(
                                                                                invStatus: orderLevelVar4Item.invStatus,
                                                                                orderNo: orderLevelVar4Item.orderNo,
                                                                                client: orderLevelVar4Item.clientName,
                                                                              ));
                                                                              _model.selectedIndex = orderLevelVar4Index;
                                                                            });
                                                                          },
                                                                          child:
                                                                              AutoSizeText(
                                                                            orderLevelVar4Item.flow == 'out-naklad'
                                                                                ? '-${valueOrDefault<String>(
                                                                                    orderLevelVar4Item.details?.toString(),
                                                                                    '0',
                                                                                  )}'
                                                                                : valueOrDefault<String>(
                                                                                    orderLevelVar4Item.details?.toString(),
                                                                                    '0',
                                                                                  ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                            minFontSize:
                                                                                6.0,
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 72.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onDoubleTap: () async {
                                                                                      setState(() {
                                                                                        _model.fixedColumns = [];
                                                                                      });
                                                                                      setState(() {
                                                                                        _model.addToFixedColumns(FixedColumnsStruct(
                                                                                          invStatus: orderLevelVar4Item.invStatus,
                                                                                          orderNo: orderLevelVar4Item.orderNo,
                                                                                          client: orderLevelVar4Item.clientName,
                                                                                        ));
                                                                                        _model.selectedIndex = orderLevelVar4Index;
                                                                                      });
                                                                                    },
                                                                                    child: AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        orderLevelVar4Item.weight?.toString(),
                                                                                        '-1',
                                                                                      ).maybeHandleOverflow(
                                                                                        maxChars: 10,
                                                                                        replacement: '…',
                                                                                      ),
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto',
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                      minFontSize: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(text: orderLevelVar4Item.weight!.toString()));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 72.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onDoubleTap: () async {
                                                                                      setState(() {
                                                                                        _model.fixedColumns = [];
                                                                                      });
                                                                                      setState(() {
                                                                                        _model.addToFixedColumns(FixedColumnsStruct(
                                                                                          invStatus: orderLevelVar4Item.invStatus,
                                                                                          orderNo: orderLevelVar4Item.orderNo,
                                                                                          client: orderLevelVar4Item.clientName,
                                                                                        ));
                                                                                        _model.selectedIndex = orderLevelVar4Index;
                                                                                      });
                                                                                    },
                                                                                    child: AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        orderLevelVar4Item.palletPosition?.toString(),
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
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.universalRefNo,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.universalRefNo,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.fmsRef,
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
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.fmsRef,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.loadRefDvh,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.loadRefDvh,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.customName,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.comment,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 1.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.comment,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Builder(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: DocumentsWidget(
                                                                                              orderId: orderLevelVar4Item.id!,
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
                                                                              Text(
                                                                                orderLevelVar4Item.documents.length.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.damageMark,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.item,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.item,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.opisBlaga,
                                                                                    'brez izbire',
                                                                                  ).maybeHandleOverflow(
                                                                                    maxChars: 10,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(
                                                                                      text: valueOrDefault<String>(
                                                                                    orderLevelVar4Item.opisBlaga,
                                                                                    'brez izbire',
                                                                                  )));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.loadingType,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.loadingType2,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.otherManipulation,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.responsibleName} ${orderLevelVar4Item.responsibleLastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant1Name} ${orderLevelVar4Item.assistant1LastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant2Name} ${orderLevelVar4Item.assistant2LastName}',
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant3Name} ${orderLevelVar4Item.assistant3LastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant4Name} ${orderLevelVar4Item.assistant4LastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant5Name} ${orderLevelVar4Item.assistant5LastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.assistant6Name} ${orderLevelVar4Item.assistant6LastName}',
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
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  '${orderLevelVar4Item.adminName} ${orderLevelVar4Item.adminLastName}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        fontSize: 11.0,
                                                                                      ),
                                                                                  minFontSize: 6.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.fixedColumns = [];
                                                                              });
                                                                              setState(() {
                                                                                _model.addToFixedColumns(FixedColumnsStruct(
                                                                                  invStatus: orderLevelVar4Item.invStatus,
                                                                                  orderNo: orderLevelVar4Item.orderNo,
                                                                                  client: orderLevelVar4Item.clientName,
                                                                                ));
                                                                                _model.selectedIndex = orderLevelVar4Index;
                                                                              });
                                                                            },
                                                                            child:
                                                                                AutoSizeText(
                                                                              orderLevelVar4Item.flow == 'out-naklad'
                                                                                  ? '-${valueOrDefault<String>(
                                                                                      orderLevelVar4Item.quantity?.toString(),
                                                                                      '0',
                                                                                    )}'
                                                                                  : valueOrDefault<String>(
                                                                                      orderLevelVar4Item.quantity?.toString(),
                                                                                      '0',
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
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 72.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onDoubleTap: () async {
                                                                                      setState(() {
                                                                                        _model.fixedColumns = [];
                                                                                      });
                                                                                      setState(() {
                                                                                        _model.addToFixedColumns(FixedColumnsStruct(
                                                                                          invStatus: orderLevelVar4Item.invStatus,
                                                                                          orderNo: orderLevelVar4Item.orderNo,
                                                                                          client: orderLevelVar4Item.clientName,
                                                                                        ));
                                                                                        _model.selectedIndex = orderLevelVar4Index;
                                                                                      });
                                                                                    },
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        orderLevelVar4Item.internalRefCustom?.toString(),
                                                                                        'brez izbire',
                                                                                      ).maybeHandleOverflow(maxChars: 12),
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.internalAccounting,
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
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await Clipboard.setData(ClipboardData(text: orderLevelVar4Item.internalAccounting!));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.content_copy,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  setState(() {
                                                                                    _model.fixedColumns = [];
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.addToFixedColumns(FixedColumnsStruct(
                                                                                      invStatus: orderLevelVar4Item.invStatus,
                                                                                      orderNo: orderLevelVar4Item.orderNo,
                                                                                      client: orderLevelVar4Item.clientName,
                                                                                    ));
                                                                                    _model.selectedIndex = orderLevelVar4Index;
                                                                                  });
                                                                                },
                                                                                child: AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    orderLevelVar4Item.packagingName,
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
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 72.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onDoubleTap: () async {
                                                                                      setState(() {
                                                                                        _model.fixedColumns = [];
                                                                                      });
                                                                                      setState(() {
                                                                                        _model.addToFixedColumns(FixedColumnsStruct(
                                                                                          invStatus: orderLevelVar4Item.invStatus,
                                                                                          orderNo: orderLevelVar4Item.orderNo,
                                                                                          client: orderLevelVar4Item.clientName,
                                                                                        ));
                                                                                        _model.selectedIndex = orderLevelVar4Index;
                                                                                      });
                                                                                    },
                                                                                    child: AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        orderLevelVar4Item.loadingSequence?.toString(),
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
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: orderLevelVar4Index == _model.selectedIndex
                                                                              ? FlutterFlowTheme.of(context).tertiary
                                                                              : (orderLevelVar4Index % 2 == 0 ? const Color(0x00000000) : FlutterFlowTheme.of(context).accent4),
                                                                        ),
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onDoubleTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.fixedColumns = [];
                                                                            });
                                                                            setState(() {
                                                                              _model.addToFixedColumns(FixedColumnsStruct(
                                                                                invStatus: orderLevelVar4Item.invStatus,
                                                                                orderNo: orderLevelVar4Item.orderNo,
                                                                                client: orderLevelVar4Item.clientName,
                                                                              ));
                                                                              _model.selectedIndex = orderLevelVar4Index;
                                                                            });
                                                                          },
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
                                                                            minFontSize:
                                                                                6.0,
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
                                                                            FFAppState().clearDetailsViewCache();
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: DetailsWidget(
                                                                                      orderId: orderLevelVar4Item.id!,
                                                                                      orderNo: orderLevelVar4Item.orderNo!,
                                                                                      warehouseIdDetails: orderLevelVar4Item.warehouse!,
                                                                                      barcode: _model.barcodesDDValue != null && _model.barcodesDDValue != '' ? _model.barcodesDDValue : '',
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.more_vert,
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
                                                                            FFAppState().clearTablesCache();
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: FormsWidget(
                                                                                      orderId: orderLevelVar4Item.id!,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.edit_square,
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
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: SureQueryWidget(
                                                                                      saveChangesP: () async {
                                                                                        await OrderLevelTable().insert({
                                                                                          'order_no': '${orderLevelVar4Item.orderNo} - copy',
                                                                                          'quantity': orderLevelVar4Item.quantity,
                                                                                          'pallet_position': orderLevelVar4Item.palletPosition,
                                                                                          'unit': orderLevelVar4Item.unit,
                                                                                          'weight': orderLevelVar4Item.weight,
                                                                                          'custom': orderLevelVar4Item.custom,
                                                                                          'good': orderLevelVar4Item.good,
                                                                                          'good_description': orderLevelVar4Item.goodDescription,
                                                                                          'packaging': orderLevelVar4Item.packaging,
                                                                                          'barcodes': orderLevelVar4Item.barcodeList,
                                                                                          'documents': orderLevelVar4Item.documents,
                                                                                          'no_barcodes': FFAppState().emptyList,
                                                                                          'received_barcodes': FFAppState().emptyList,
                                                                                          'repeated_barcodes': FFAppState().emptyList,
                                                                                          'container_no': orderLevelVar4Item.containerNo,
                                                                                          'client': orderLevelVar4Item.client,
                                                                                        });
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
                                                                            Icons.content_copy_rounded,
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
                                                                            FFAppState().clearTablesCache();
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: SureQueryWidget(
                                                                                      saveChangesP: () async {
                                                                                        await OrderLevelTable().delete(
                                                                                          matchingRows: (rows) => rows.eq(
                                                                                            'id',
                                                                                            orderLevelVar4Item.id,
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
                                                                            Icons.delete_forever,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).warning,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
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
                                                          dataRowHeight: 28.0,
                                                          border: TableBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          dividerThickness: 2.0,
                                                          columnSpacing: 0.0,
                                                          showBottomBorder:
                                                              true,
                                                          minWidth: 49.0,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Container(
                                                  width: 7000.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      28.0, 0.0, 28.0, 28.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 28.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().clearTablesCache();
                                              },
                                              child: Icon(
                                                Icons.restore_page_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 40.0,
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            const CreateRecordWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'gzx8lf20' /* Create new record */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
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
