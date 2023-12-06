import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchQueryCall {
  static Future<ApiCallResponse> call({
    String? column = '',
    String? value = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchQuery',
      apiUrl:
          'https://aaxptvfturwawmigxwgq.supabase.co/rest/v1/vista_order_level_extended?$column=ilike.*$value*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Range': '0-9',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFheHB0dmZ0dXJ3YXdtaWd4d2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMzcxODcsImV4cCI6MjAxMzkxMzE4N30.dIt1jxhITMVw7K_JSg7hnOgUNDxnpj441d_6rPxEBTM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFheHB0dmZ0dXJ3YXdtaWd4d2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMzcxODcsImV4cCI6MjAxMzkxMzE4N30.dIt1jxhITMVw7K_JSg7hnOgUNDxnpj441d_6rPxEBTM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
