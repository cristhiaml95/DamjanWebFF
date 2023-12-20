import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pdf_viewer_model.dart';
export 'pdf_viewer_model.dart';

class PdfViewerWidget extends StatefulWidget {
  const PdfViewerWidget({
    super.key,
    required this.pdfLink,
  });

  final String? pdfLink;

  @override
  _PdfViewerWidgetState createState() => _PdfViewerWidgetState();
}

class _PdfViewerWidgetState extends State<PdfViewerWidget> {
  late PdfViewerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PdfViewerModel());

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

    return Container(
      width: 1000.0,
      height: 1000.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '044xi4wz' /* Pdf viewer */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
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
                    Icons.close_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          FlutterFlowPdfViewer(
            networkPath: widget.pdfLink!,
            width: 1000.0,
            height: 800.0,
            horizontalScroll: false,
          ),
        ],
      ),
    );
  }
}
