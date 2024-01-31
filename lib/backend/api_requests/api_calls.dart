import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchQueryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchQuery',
      apiUrl:
          'https://xvpkpgmwllqgytdtlnts.supabase.co/rest/v1/vista_order_level_extended?order_status=eq.novo naročilo&licence_plate=not.is.null',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
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
