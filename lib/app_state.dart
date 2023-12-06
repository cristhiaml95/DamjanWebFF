import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  final _tablesManager =
      FutureRequestManager<List<VistaOrderLevelExtendedRow>>();
  Future<List<VistaOrderLevelExtendedRow>> tables({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<VistaOrderLevelExtendedRow>> Function() requestFn,
  }) =>
      _tablesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTablesCache() => _tablesManager.clear();
  void clearTablesCacheKey(String? uniqueKey) =>
      _tablesManager.clearRequest(uniqueKey);

  final _clientsManager = FutureRequestManager<List<ClientsRow>>();
  Future<List<ClientsRow>> clients({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ClientsRow>> Function() requestFn,
  }) =>
      _clientsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearClientsCache() => _clientsManager.clear();
  void clearClientsCacheKey(String? uniqueKey) =>
      _clientsManager.clearRequest(uniqueKey);

  final _warehousesManager = FutureRequestManager<List<WarehousesRow>>();
  Future<List<WarehousesRow>> warehouses({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<WarehousesRow>> Function() requestFn,
  }) =>
      _warehousesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearWarehousesCache() => _warehousesManager.clear();
  void clearWarehousesCacheKey(String? uniqueKey) =>
      _warehousesManager.clearRequest(uniqueKey);

  final _customsManager = FutureRequestManager<List<CustomsRow>>();
  Future<List<CustomsRow>> customs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CustomsRow>> Function() requestFn,
  }) =>
      _customsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCustomsCache() => _customsManager.clear();
  void clearCustomsCacheKey(String? uniqueKey) =>
      _customsManager.clearRequest(uniqueKey);

  final _usersManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> users({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _usersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsersCache() => _usersManager.clear();
  void clearUsersCacheKey(String? uniqueKey) =>
      _usersManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
