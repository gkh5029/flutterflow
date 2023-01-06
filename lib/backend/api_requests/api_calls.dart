import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TWDtoCurrencyCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'TWDtoCurrency',
      apiUrl: 'https://exchangerate-api.p.rapidapi.com/rapid/latest/TWD',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '6a082a3709mshdcb270f2cde4602p1bd247jsn4a950d690240',
        'X-RapidAPI-Host': 'exchangerate-api.p.rapidapi.com',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic twd2myr2(dynamic response) => getJsonField(
        response,
        r'''$.rates.MYR''',
      );
}

class MYRtoCurrencyCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'MYRtoCurrency',
      apiUrl: 'https://exchangerate-api.p.rapidapi.com/rapid/latest/MYR',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '6a082a3709mshdcb270f2cde4602p1bd247jsn4a950d690240',
        'X-RapidAPI-Host': 'exchangerate-api.p.rapidapi.com',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic myr2twd(dynamic response) => getJsonField(
        response,
        r'''$.rates.TWD''',
      );
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
