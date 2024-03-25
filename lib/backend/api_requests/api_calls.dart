import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class YakitapiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'yakitapi',
      apiUrl:
          'http://fatura.egenakliyat.com/online/server/toolsaction.php?api_yakit',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? motorin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.motorin''',
      ));
  static String? benzin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.benzin''',
      ));
  static String? lpg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lpg''',
      ));
}

class SayiUretCall {
  static Future<ApiCallResponse> call({
    int? ilksayi = 1,
    int? sonsayi = 90,
    int? sayiadedi = 7,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sayiUret',
      apiUrl: 'http://fatura.egenakliyat.com/online/server/toolsaction.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ilksayi': ilksayi,
        'sonsayi': sonsayi,
        'sayiadedi': sayiadedi,
        'sayiUret': true,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? sayiuret(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class AraclarCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'araclar',
      apiUrl: 'http://fatura.egenakliyat.com/online/server/action.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'araclist': "araclist",
        'key': "test",
        'search': search,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? araclar(dynamic response) => getJsonField(
        response,
        r'''$.araclar''',
        true,
      ) as List?;
}

class EvrakCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'evrak',
      apiUrl: 'http://fatura.egenakliyat.com/online/server/action.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'evrak': "app",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? evrak(dynamic response) => getJsonField(
        response,
        r'''$.evrak''',
        true,
      ) as List?;
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
