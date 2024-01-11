import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/filters/filters_widget.dart';
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
import 'order_overview_model.dart';
export 'order_overview_model.dart';

class OrderOverviewWidget extends StatefulWidget {
  const OrderOverviewWidget({
    super.key,
    this.orderOverviewTableKey,
  });

  final String? orderOverviewTableKey;

  @override
  _OrderOverviewWidgetState createState() => _OrderOverviewWidgetState();
}

class _OrderOverviewWidgetState extends State<OrderOverviewWidget>
    with TickerProviderStateMixin {
  late OrderOverviewModel _model;

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
    _model = createModel(context, () => OrderOverviewModel());

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
          widget.orderOverviewTableKey,
          'orderOverviewUsersDefKey',
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
        List<UsersRow> orderOverviewUsersRowList = snapshot.data!;
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
                        '5pt8ni5i' /* Order Details */,
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
                                          '4wsrb1wi' /* Trampuž */,
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
                                                    'mptq4cds' /* Dashboard */,
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
                                                Icons.assignment_sharp,
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
                                                      'tec273vi' /* Order overview */,
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
                                        context.pushNamed('order_warehouse');
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
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
                                                      'k45314yi' /* Order warehouse */,
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
                                                      '0obc2c85' /* Warehouse 2 */,
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
                                                      'otik4136' /* Recent movements */,
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
                                                        '720ruq5p' /* Calendar */,
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
                                          'hzz4qal4' /* Settings */,
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
                                                      '6lb48woe' /* Users */,
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
                                                      'ozj71tla' /* Explore */,
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
                                userDetail: orderOverviewUsersRowList
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
                        future: FFAppState().users(
                          uniqueQueryKey: valueOrDefault<String>(
                            widget.orderOverviewTableKey,
                            'orderOverviewUsersDefKey',
                          ),
                          requestFn: () =>
                              VistaOrderLevelExtendedTable().queryRows(
                            queryFn: (q) => q.order('created_at'),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 0.0, 12.0),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 2.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons.home_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 16.0, 8.0),
                                                  child: Container(
                                                    height: 32.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                          'jvd3s0w4' /* Order overview */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'm09tvrfy' /* Movements */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'jods274b' /* Below are the details of your ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
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
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ejr128eh' /* Filters */,
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
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
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
                                            _model.filtersModel
                                                .barcodesDDFValueController
                                                ?.reset();
                                            _model.filtersModel
                                                .containerDDFValueController
                                                ?.reset();
                                          });
                                        },
                                        child: Icon(
                                          Icons.replay,
                                          color: FlutterFlowTheme.of(context)
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
                                        widget.orderOverviewTableKey,
                                        'orderOverviewCustomDefKey',
                                      ),
                                      parameter2: orderOverviewUsersRowList
                                          .map((e) => e.id)
                                          .toList(),
                                      parameter3: orderOverviewUsersRowList
                                          .map((e) => e.lastName)
                                          .toList(),
                                      parameter4: valueOrDefault<String>(
                                        widget.orderOverviewTableKey,
                                        'orderOverviewWarehousesDefKey',
                                      ),
                                      parameter5: valueOrDefault<String>(
                                        widget.orderOverviewTableKey,
                                        'orderOverviewCustomsDefKey',
                                      ),
                                      orderLevelView:
                                          maxWidthVistaOrderLevelExtendedRowList,
                                    ),
                                  ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final orderLevelVar =
                                            maxWidthVistaOrderLevelExtendedRowList
                                                .where((e) =>
                                                    valueOrDefault<bool>(
                                                      (_model.filtersModel.clientDDFValue != null && _model.filtersModel.clientDDFValue != '' ? (e.client == _model.filtersModel.clientDDFValue) : true) &&
                                                          (_model.filtersModel.flowDDFValue != null && _model.filtersModel.flowDDFValue != ''
                                                              ? (e.flow ==
                                                                  _model
                                                                      .filtersModel
                                                                      .flowDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.orderStatusDDFValue != null && _model.filtersModel.orderStatusDDFValue != ''
                                                              ? (e.orderStatus ==
                                                                  _model
                                                                      .filtersModel
                                                                      .orderStatusDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.adminDDFValue != null && _model.filtersModel.adminDDFValue != ''
                                                              ? (e.admin ==
                                                                  _model
                                                                      .filtersModel
                                                                      .adminDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.warehouseDDFValue != null && _model.filtersModel.warehouseDDFValue != ''
                                                              ? (e.warehouse ==
                                                                  _model
                                                                      .filtersModel
                                                                      .warehouseDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.customDDFValue != null && _model.filtersModel.customDDFValue != ''
                                                              ? (e.custom ==
                                                                  _model
                                                                      .filtersModel
                                                                      .customDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.responsibleDDFValue != null && _model.filtersModel.responsibleDDFValue != ''
                                                              ? (e.responsible == _model.filtersModel.responsibleDDFValue)
                                                              : true) &&
                                                          (_model.filtersModel.assistant1DDFValue != null && _model.filtersModel.assistant1DDFValue != '' ? (e.assistant1 == _model.filtersModel.assistant1DDFValue) : true) &&
                                                          (_model.filtersModel.assistant2DDFValue != null && _model.filtersModel.assistant2DDFValue != '' ? (e.assistant2 == _model.filtersModel.assistant2DDFValue) : true) &&
                                                          (_model.filtersModel.assistant3DDFValue != null && _model.filtersModel.assistant3DDFValue != '' ? (e.assistant3 == _model.filtersModel.assistant3DDFValue) : true) &&
                                                          (_model.filtersModel.assistant5DDFValue != null && _model.filtersModel.assistant5DDFValue != '' ? (e.assistant5 == _model.filtersModel.assistant5DDFValue) : true) &&
                                                          (_model.filtersModel.assistant4DDFValue != null && _model.filtersModel.assistant4DDFValue != '' ? (e.assistant4 == _model.filtersModel.assistant4DDFValue) : true) &&
                                                          (_model.filtersModel.assistant6DDFValue != null && _model.filtersModel.assistant6DDFValue != '' ? (e.assistant6 == _model.filtersModel.assistant6DDFValue) : true) &&
                                                          (_model.filtersModel.barcodesDDFValue != null && _model.filtersModel.barcodesDDFValue != '' ? (e.id == _model.filtersModel.barcodesDDFValue) : true) &&
                                                          (_model.filtersModel.containerDDFValue != null && _model.filtersModel.containerDDFValue != '' ? (e.id == _model.filtersModel.containerDDFValue) : true),
                                                      true,
                                                    ))
                                                .toList();
                                        return SizedBox(
                                          width: double.infinity,
                                          child: DataTable2(
                                            columns: [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uei1wa0f' /* Order No. */,
                                                      ),
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 10.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4qa1yq6s' /* Client */,
                                                      ),
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kdk8f7kh' /* Flow */,
                                                      ),
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'oq142wbw' /* Date (order creation) */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 8.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1l14kqkx' /* Time */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 8.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8a3pow04' /* Order Status */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '10huia7g' /* Admin name */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8u4nje9k' /* Warehouse */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                      minFontSize: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'j36nbf4q' /* Quantity */,
                                                      ),
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 10.0,
                                                              ),
                                                      minFontSize: 6.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3vvrcltq' /* Custom */,
                                                      ),
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 10.0,
                                                              ),
                                                      minFontSize: 6.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4ud2i6wv' /* Documents */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 8.0,
                                                              ),
                                                      minFontSize: 6.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zr1r30z4' /* Int. num. acc. */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 8.0,
                                                              ),
                                                      minFontSize: 6.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jutau9yj' /* Int. ref. custom */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 8.0,
                                                              ),
                                                      minFontSize: 6.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hsl7ifnu' /* Details */,
                                                      ),
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                fontSize: 10.0,
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
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6joa0ub0' /* Edit */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                fontSize: 10.0,
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
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8egtaedv' /* Delete */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning,
                                                                fontSize: 10.0,
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
                                            ],
                                            rows: orderLevelVar
                                                .mapIndexed((orderLevelVarIndex,
                                                        orderLevelVarItem) =>
                                                    [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .orderNo,
                                                              'brez izbire',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                            minFontSize: 6.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .clientName,
                                                              'brez izbire',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .flow,
                                                              'brez izbire',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              'yMMMd',
                                                              functions.parsePostgresTimestamp(
                                                                  orderLevelVarItem
                                                                      .createdAt!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            '${dateTimeFormat(
                                                              'Hm',
                                                              functions.parsePostgresTimestamp(
                                                                  orderLevelVarItem
                                                                      .etaI!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )} - ${dateTimeFormat(
                                                              'Hm',
                                                              functions.parsePostgresTimestamp(
                                                                  orderLevelVarItem
                                                                      .etaF!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .orderStatus,
                                                              'brez izbire',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            '${orderLevelVarItem.adminName} ${orderLevelVarItem.adminLastName}',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .warehouseName,
                                                              'brez izbire',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .quantity
                                                                  ?.toString(),
                                                              '-1',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .customName,
                                                              'brez izbire',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                            minFontSize: 6.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                DocumentsWidget(
                                                                              orderId: orderLevelVarItem.id!,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .picture_as_pdf_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                orderLevelVarItem
                                                                    .documents
                                                                    .length
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .internalAccounting,
                                                              'brez izbire',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                            minFontSize: 6.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: orderLevelVarIndex %
                                                                        2 ==
                                                                    0
                                                                ? const Color(
                                                                    0x00000000)
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            valueOrDefault<
                                                                String>(
                                                              orderLevelVarItem
                                                                  .internalRefCustom
                                                                  ?.toString(),
                                                              'brez izbire',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                            minFontSize: 6.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                  .clearDetailsViewCache();
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          DetailsWidget(
                                                                        orderId:
                                                                            orderLevelVarItem.id!,
                                                                        orderNo:
                                                                            orderLevelVarItem.orderNo!,
                                                                        warehouseIdDetails:
                                                                            orderLevelVarItem.warehouse!,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  setState(
                                                                      () {}));
                                                            },
                                                            child: Icon(
                                                              Icons.more_vert,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                  .clearTablesCache();
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          FormsWidget(
                                                                        orderId:
                                                                            orderLevelVarItem.id!,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  setState(
                                                                      () {}));
                                                            },
                                                            child: Icon(
                                                              Icons.edit_square,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          SureQueryWidget(
                                                                        saveChangesP:
                                                                            () async {
                                                                          FFAppState()
                                                                              .clearTablesCache();
                                                                          await OrderLevelTable()
                                                                              .delete(
                                                                            matchingRows: (rows) =>
                                                                                rows.eq(
                                                                              'id',
                                                                              orderLevelVarItem.id,
                                                                            ),
                                                                          );
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
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
                                                                  setState(
                                                                      () {}));
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_forever,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .warning,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList())
                                                .map((e) => DataRow(cells: e))
                                                .toList(),
                                            headingRowColor:
                                                MaterialStateProperty.all(
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                            ),
                                            headingRowHeight: 40.0,
                                            dataRowColor:
                                                MaterialStateProperty.all(
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                            ),
                                            dataRowHeight: 28.0,
                                            border: TableBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            dividerThickness: 2.0,
                                            columnSpacing: 0.0,
                                            showBottomBorder: true,
                                            minWidth: 49.0,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
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
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
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
                                            '6r8mvs1b' /* Create new record */,
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
