// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:data_table_2/data_table_2.dart';
import 'package:intl/intl_browser.dart';

class CustomDynamicDataTableWidget extends StatefulWidget {
  const CustomDynamicDataTableWidget({
    Key? key,
    this.width,
    this.height,
    required this.columnHeaders,
    required this.supabaseRows,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> columnHeaders;
  final List<VistaOrderLevelExtendedRow> supabaseRows;

  @override
  _CustomDynamicDataTableWidgetState createState() =>
      _CustomDynamicDataTableWidgetState();
}

class _CustomDynamicDataTableWidgetState
    extends State<CustomDynamicDataTableWidget> {
  int? _sortColumnIndex;
  bool _sortAscending = true;

  void _sort<T>(Comparable<T> Function(VistaOrderLevelExtendedRow d) getField,
      int columnIndex, bool ascending) {
    setState(() {
      widget.supabaseRows.sort((a, b) {
        final aValue = getField(a);
        final bValue = getField(b);
        return ascending
            ? Comparable.compare(aValue, bValue)
            : Comparable.compare(bValue, aValue);
      });
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  @override
  Widget build(BuildContext context) {
    final columns = widget.columnHeaders
        .map(
          (header) => DataColumn(
            label: Text(header),
            onSort: (columnIndex, ascending) => _sort<String>(
                (VistaOrderLevelExtendedRow d) =>
                    d.getFieldByIndex(columnIndex),
                columnIndex,
                ascending),
          ),
        )
        .toList();

    final rows = widget.supabaseRows
        .map((row) => DataRow(cells: _createCellsForRow(row)))
        .toList();

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: DataTable2(
        columns: columns,
        rows: rows,
        columnSpacing: 0,
        horizontalMargin: 0,
        minWidth: 600,
        fixedLeftColumns: 3,
        sortAscending: _sortAscending,
        sortColumnIndex: _sortColumnIndex,
        border: TableBorder.all(width: 1),
      ),
    );
  }

  List<DataCell> _createCellsForRow(VistaOrderLevelExtendedRow row) {
    return [
      DataCell(Text(row.invStatus)),
      DataCell(Text(row.orderNo)),
      DataCell(
          Text(row.clientName.substring(0, min(20, row.clientName.length)))),
      DataCell(Text(DateFormat('d/M/y HH:mm').format(row.createdAt.toLocal()))),
      DataCell(Text(row.flow)),
      DataCell(Text(row.orderStatus)),
      DataCell(Text('${row.adminName} ${row.adminLastName}')),
      DataCell(Text(row.warehouseName)),
      DataCell(Text(DateFormat('d/M/y').format(row.etaDate.toLocal()))),
      DataCell(Text(
          '${DateFormat('HH:mm').format(row.etaI.toLocal())} - ${DateFormat('HH:mm').format(row.etaF.toLocal())}')),
      DataCell(Text(DateFormat('HH:mm').format(row.arrival.toLocal()))),
      DataCell(Text(row.loadingGateRamp)),
      DataCell(Text(row.loadingSequence.toString())),
      DataCell(Text(DateFormat('HH:mm').format(row.start.toLocal()))),
      DataCell(Text(DateFormat('HH:mm').format(row.stop.toLocal()))),
      DataCell(Text(row.licencePlate)),
      DataCell(Text(row.quantity.toString())),
      DataCell(Text(row.palletPosition.toString())),
      DataCell(Text(row.unit.toString())),
      DataCell(Text(row.weight.toString())),
      DataCell(Text(row.containerNo)),
      DataCell(Text(row.improvement)),
      DataCell(Text(row.customName)),
      DataCell(Text('${row.responsibleName} ${row.responsibleLastName}')),
      DataCell(Text('${row.assistant1Name} ${row.assistant1LastName}')),
      DataCell(Text('${row.assistant2Name} ${row.assistant2LastName}')),
      DataCell(Text('${row.assistant3Name} ${row.assistant3LastName}')),
      DataCell(Text('${row.assistant4Name} ${row.assistant4LastName}')),
      DataCell(Text('${row.assistant5Name} ${row.assistant5LastName}')),
      DataCell(Text('${row.assistant6Name} ${row.assistant6LastName}')),
      DataCell(Text(row.fmsRef)),
      DataCell(Text(row.loadRefDvh)),
      DataCell(Text(row.damageMark)),
      DataCell(Text(row.universalRefNo)),
      DataCell(Text(row.comment)),
      DataCell(Text(row.otherManipulation)),
      DataCell(Text(row.loadingType)),
      DataCell(Text(row.loadingType2)),
      DataCell(Text(row.internalAccounting)),
      DataCell(Text(row.internalRefCustom.toString())),
      // ... Add any additional properties as needed
    ];
  }
}

class VistaOrderLevelExtendedRow {
  String invStatus;
  String orderNo;
  String clientName;
  DateTime createdAt;
  String flow;
  String orderStatus;
  String adminName;
  String adminLastName;
  String warehouseName;
  DateTime etaDate;
  DateTime etaI;
  DateTime etaF;
  DateTime arrival;
  String loadingGateRamp;
  int loadingSequence;
  DateTime start;
  DateTime stop;
  String licencePlate;
  int quantity;
  int palletPosition;
  int unit;
  int weight;
  String containerNo;
  String improvement;
  String customName;
  String responsibleName;
  String responsibleLastName;
  String assistant1Name;
  String assistant1LastName;
  String assistant2Name;
  String assistant2LastName;
  String assistant3Name;
  String assistant3LastName;
  String assistant4Name;
  String assistant4LastName;
  String assistant5Name;
  String assistant5LastName;
  String assistant6Name;
  String assistant6LastName;
  String fmsRef;
  String loadRefDvh;
  String damageMark;
  String universalRefNo;
  String comment;
  String otherManipulation;
  String loadingType;
  String loadingType2;
  String internalAccounting;
  int internalRefCustom;

  VistaOrderLevelExtendedRow({
    required this.invStatus,
    required this.orderNo,
    required this.clientName,
    required this.createdAt,
    required this.flow,
    required this.orderStatus,
    required this.adminName,
    required this.adminLastName,
    required this.warehouseName,
    required this.etaDate,
    required this.etaI,
    required this.etaF,
    required this.arrival,
    required this.loadingGateRamp,
    required this.loadingSequence,
    required this.start,
    required this.stop,
    required this.licencePlate,
    required this.quantity,
    required this.palletPosition,
    required this.unit,
    required this.weight,
    required this.containerNo,
    required this.improvement,
    required this.customName,
    required this.responsibleName,
    required this.responsibleLastName,
    required this.assistant1Name,
    required this.assistant1LastName,
    required this.assistant2Name,
    required this.assistant2LastName,
    required this.assistant3Name,
    required this.assistant3LastName,
    required this.assistant4Name,
    required this.assistant4LastName,
    required this.assistant5Name,
    required this.assistant5LastName,
    required this.assistant6Name,
    required this.assistant6LastName,
    required this.fmsRef,
    required this.loadRefDvh,
    required this.damageMark,
    required this.universalRefNo,
    required this.comment,
    required this.otherManipulation,
    required this.loadingType,
    required this.loadingType2,
    required this.internalAccounting,
    required this.internalRefCustom,
  });

  List<dynamic> get props => [
        invStatus,
        orderNo,
        clientName,
        createdAt,
        flow,
        orderStatus,
        '$adminName $adminLastName',
        warehouseName,
        etaDate,
        '$etaI - $etaF',
        arrival,
        loadingGateRamp,
        loadingSequence,
        start,
        stop,
        licencePlate,
        quantity,
        palletPosition,
        unit,
        weight,
        containerNo,
        improvement,
        customName,
        '$responsibleName $responsibleLastName',
        '$assistant1Name $assistant1LastName',
        '$assistant2Name $assistant2LastName',
        '$assistant3Name $assistant3LastName',
        '$assistant4Name $assistant4LastName',
        '$assistant5Name $assistant5LastName',
        '$assistant6Name $assistant6LastName',
        fmsRef,
        loadRefDvh,
        damageMark,
        universalRefNo,
        comment,
        otherManipulation,
        loadingType,
        loadingType2,
        internalAccounting,
        internalRefCustom,
        // ... Add any additional properties as needed
      ];
  dynamic getFieldByIndex(int index) {
    return props[index];
  }
}
