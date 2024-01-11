import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'filters_model.dart';
export 'filters_model.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    required this.orderLevelView,
  });

  final String? parameter1;
  final List<String>? parameter2;
  final List<String>? parameter3;
  final String? parameter4;
  final String? parameter5;
  final List<VistaOrderLevelExtendedRow>? orderLevelView;

  @override
  _FiltersWidgetState createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late FiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                  child: FutureBuilder<List<ClientsRow>>(
                    future: FFAppState().clients(
                      uniqueQueryKey: widget.parameter1,
                      requestFn: () => ClientsTable().queryRows(
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
                      List<ClientsRow> clientDDFClientsRowList = snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.clientDDFValueController ??=
                            FormFieldController<String>(
                          _model.clientDDFValue ??= '',
                        ),
                        options: List<String>.from(
                            clientDDFClientsRowList.map((e) => e.id).toList()),
                        optionLabels: clientDDFClientsRowList
                            .map((e) => e.client)
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.clientDDFValue = val),
                        width: 200.0,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: FFLocalizations.of(context).getText(
                          'mo15p04z' /* Select client... */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'l8ngznrr' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: true,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.flowDDFValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      FFLocalizations.of(context).getText(
                        'j080omnh' /* in-razklad */,
                      ),
                      FFLocalizations.of(context).getText(
                        'z3yp9g3e' /* out-naklad */,
                      ),
                      FFLocalizations.of(context).getText(
                        'j86lap75' /* brez izbire */,
                      )
                    ],
                    onChanged: (val) =>
                        setState(() => _model.flowDDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      '1c1osl9p' /* Select flow... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.orderStatusDDFValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      FFLocalizations.of(context).getText(
                        'n1jbruxz' /* novo naročilo */,
                      ),
                      FFLocalizations.of(context).getText(
                        '7cap2iws' /* priprava */,
                      ),
                      FFLocalizations.of(context).getText(
                        'kerszixq' /* izvajanje */,
                      ),
                      FFLocalizations.of(context).getText(
                        'k3xmonp0' /* zaključeno */,
                      )
                    ],
                    onChanged: (val) =>
                        setState(() => _model.orderStatusDDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'lplavtp2' /* Select order status... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.adminDDFValueController ??=
                        FormFieldController<String>(
                      _model.adminDDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.adminDDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'x6ht694x' /* Select admin... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FutureBuilder<List<WarehousesRow>>(
                    future: FFAppState().warehouses(
                      uniqueQueryKey: widget.parameter4,
                      requestFn: () => WarehousesTable().queryRows(
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
                      List<WarehousesRow> warehouseDDFWarehousesRowList =
                          snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.warehouseDDFValueController ??=
                            FormFieldController<String>(
                          _model.warehouseDDFValue ??= '',
                        ),
                        options: List<String>.from(warehouseDDFWarehousesRowList
                            .map((e) => e.id)
                            .toList()),
                        optionLabels: warehouseDDFWarehousesRowList
                            .map((e) => e.warehouse)
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.warehouseDDFValue = val),
                        width: 200.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: FFLocalizations.of(context).getText(
                          '8zc4a7z6' /* Select warehouse... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FutureBuilder<List<CustomsRow>>(
                    future: FFAppState().customs(
                      uniqueQueryKey: widget.parameter5,
                      requestFn: () => CustomsTable().queryRows(
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
                      List<CustomsRow> customDDFCustomsRowList = snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.customDDFValueController ??=
                            FormFieldController<String>(
                          _model.customDDFValue ??= '',
                        ),
                        options: List<String>.from(
                            customDDFCustomsRowList.map((e) => e.id).toList()),
                        optionLabels: customDDFCustomsRowList
                            .map((e) => e.custom)
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.customDDFValue = val),
                        width: 200.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: FFLocalizations.of(context).getText(
                          '4hndvg0a' /* Select custom... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FutureBuilder<List<DetailsViewRow>>(
                    future: FFAppState().detailsView(
                      uniqueQueryKey: widget.parameter5,
                      requestFn: () => DetailsViewTable().queryRows(
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
                      List<DetailsViewRow> barcodesDDFDetailsViewRowList =
                          snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.barcodesDDFValueController ??=
                            FormFieldController<String>(
                          _model.barcodesDDFValue ??= '',
                        ),
                        options: List<String>.from(barcodesDDFDetailsViewRowList
                            .map((e) => e.orderId)
                            .withoutNulls
                            .toList()),
                        optionLabels: barcodesDDFDetailsViewRowList
                            .map((e) => e.barcode)
                            .withoutNulls
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.barcodesDDFValue = val),
                        width: 200.0,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: FFLocalizations.of(context).getText(
                          'k1w7p134' /* Select barcode... */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '75bemxhw' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.responsibleDDFValueController ??=
                        FormFieldController<String>(
                      _model.responsibleDDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.responsibleDDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      '8na66h35' /* Select responsible... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant1DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant1DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant1DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'iltfr0jn' /* Select assistant1... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant2DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant2DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant2DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'zktjbako' /* Select assistant2... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant3DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant3DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant3DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      '9n8fsh5y' /* Select assistant3... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant4DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant4DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant4DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'byy0ncr9' /* Select assistant4... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant5DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant5DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant5DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'ni9q4iwt' /* Select assistant5... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.assistant6DDFValueController ??=
                        FormFieldController<String>(
                      _model.assistant6DDFValue ??= '',
                    ),
                    options: List<String>.from(widget.parameter2!),
                    optionLabels: widget.parameter3!,
                    onChanged: (val) =>
                        setState(() => _model.assistant6DDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'uqf93js8' /* Select assistant6... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.containerDDFValueController ??=
                        FormFieldController<String>(
                      _model.containerDDFValue ??= '',
                    ),
                    options: List<String>.from(widget.orderLevelView!
                        .map((e) => e.id)
                        .withoutNulls
                        .toList()),
                    optionLabels: widget.orderLevelView!
                        .map((e) => e.containerNo)
                        .withoutNulls
                        .toList(),
                    onChanged: (val) =>
                        setState(() => _model.containerDDFValue = val),
                    width: 200.0,
                    height: 50.0,
                    searchHintTextStyle:
                        FlutterFlowTheme.of(context).labelMedium,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'tf7wjto0' /* Select container... */,
                    ),
                    searchHintText: FFLocalizations.of(context).getText(
                      'wwh1a5q5' /* Search for an item... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: true,
                    isMultiSelect: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
