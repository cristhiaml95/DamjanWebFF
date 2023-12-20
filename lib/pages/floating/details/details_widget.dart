import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/floating/edit_details/edit_details_widget.dart';
import '/pages/floating/sure_query/sure_query_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'details_model.dart';
export 'details_model.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({
    super.key,
    String? orderId,
    String? orderNo,
    required this.warehouseIdDetails,
    this.detailsKey,
  })  : orderId = orderId ?? 'brez izbire',
        orderNo = orderNo ?? 'brez izbire';

  final String orderId;
  final String orderNo;
  final String? warehouseIdDetails;
  final String? detailsKey;

  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  late DetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 800.0,
        height: 800.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(28.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
            width: 8.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ej3c0qzx' /* Details */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'n91zm2rr' /* Orden No: */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.orderNo,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: FutureBuilder<List<DetailsViewRow>>(
                  future: FFAppState().detailsView(
                    uniqueQueryKey: valueOrDefault<String>(
                      widget.detailsKey,
                      'detailsDefKey',
                    ),
                    requestFn: () => DetailsViewTable().queryRows(
                      queryFn: (q) => q.eq(
                        'order_id',
                        widget.orderId,
                      ),
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
                    List<DetailsViewRow> dataTableDetailsViewRowList =
                        snapshot.data!;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: 800.0,
                        height: 600.0,
                        child: DataTable2(
                          columns: [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 2.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            '19723qox' /* Packaging */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
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
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 2.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            '5kdfhiqm' /* Warehouse position */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
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
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 2.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            'nbpuiz1p' /* Barcode */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
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
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 2.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            '18c2679x' /* Edit */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          minFontSize: 6.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              fixedWidth: 40.0,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: AutoSizeText(
                                    FFLocalizations.of(context).getText(
                                      'qapcudau' /* Delete */,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    minFontSize: 6.0,
                                  ),
                                ),
                              ),
                              fixedWidth: 50.0,
                            ),
                          ],
                          rows: dataTableDetailsViewRowList
                              .mapIndexed((dataTableIndex,
                                      dataTableDetailsViewRow) =>
                                  [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        dataTableDetailsViewRow
                                            .packagingDescription!,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        minFontSize: 6.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        dataTableDetailsViewRow
                                            .warehousePositionName!,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        minFontSize: 6.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        dataTableDetailsViewRow.barcode!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 12.0,
                                            ),
                                        minFontSize: 6.0,
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
                                                  child: EditDetailsWidget(
                                                    idDetailsP:
                                                        dataTableDetailsViewRow
                                                            .id!,
                                                    warehouseId: widget
                                                        .warehouseIdDetails!,
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: Icon(
                                            Icons.edit_square,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                        ),
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
                                                  child: SureQueryWidget(
                                                    saveChangesP: () async {
                                                      await DetailsTable()
                                                          .delete(
                                                        matchingRows: (rows) =>
                                                            rows.eq(
                                                          'id',
                                                          dataTableDetailsViewRow
                                                              .id,
                                                        ),
                                                      );
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Elimination'),
                                                            content: const Text(
                                                                'Row deleted successfully.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: Icon(
                                            Icons.delete_forever,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].map((c) => DataCell(c)).toList())
                              .map((e) => DataRow(cells: e))
                              .toList(),
                          headingRowColor: MaterialStateProperty.all(
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          headingRowHeight: 56.0,
                          dataRowColor: MaterialStateProperty.all(
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          dataRowHeight: 40.0,
                          border: TableBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          dividerThickness: 1.0,
                          columnSpacing: 0.0,
                          showBottomBorder: true,
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
      ),
    );
  }
}
