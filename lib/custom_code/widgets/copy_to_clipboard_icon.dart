// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart'; // Import for clipboard functionality

class CopyToClipboardIcon extends StatefulWidget {
  const CopyToClipboardIcon({
    Key? key,
    this.width,
    this.height,
    required this.textToCopy,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String textToCopy;

  @override
  _CopyToClipboardIconState createState() => _CopyToClipboardIconState();
}

class _CopyToClipboardIconState extends State<CopyToClipboardIcon> {
  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.textToCopy));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied to clipboard!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: IconButton(
        icon: Icon(Icons.copy),
        iconSize:
            widget.width ?? 24.0, // Use the width as icon size if provided
        onPressed: _copyToClipboard,
        tooltip: 'Copy to clipboard',
      ),
      alignment:
          Alignment.center, // This centers the IconButton within the container
    );
  }
}
