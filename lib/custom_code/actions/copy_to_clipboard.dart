// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart'; // Import for clipboard functionality

Future<void> copyToClipboard(BuildContext context, String text) async {
  final controller = TextEditingController(text: text);

  // Crea un OverlayEntry para mostrar el TextField fuera de la vista
  final overlay = OverlayEntry(
    builder: (BuildContext context) => Positioned(
      top: 0.0,
      left: 0.0,
      child: Container(
        width: 1,
        height: 1,
        child: TextField(
          controller: controller,
          readOnly: true,
        ),
      ),
    ),
  );
  Overlay.of(context)!.insert(overlay);

  // Espera un cuadro para asegurarse de que el TextField esté en el árbol de widgets
  await Future.delayed(Duration.zero);

  // Selecciona todo el texto
  controller.selection =
      TextSelection(baseOffset: 0, extentOffset: controller.text.length);

  // Copia al portapapeles
  await Clipboard.setData(ClipboardData(text: controller.text));

  // Limpia y remueve el OverlayEntry
  overlay.remove();
}
