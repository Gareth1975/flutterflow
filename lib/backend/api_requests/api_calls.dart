import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiloginCall {
  static Future<ApiCallResponse> call({
    String? emailaddress = ' ',
    String? password = ' ',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(emailaddress)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apilogin',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/1d7bd835191a4cad8780e23d0eeebe40/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=nPAKYg7vjd4fJiFf9hZhiv6IBCUa3qo3tJYkaRpTn0g',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? statuscode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.statuscode''',
      ));
  static String? forename(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Forename''',
      ));
  static String? clientId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userId''',
      ));
}

class ActivitiesCall {
  static Future<ApiCallResponse> call({
    String? clientID = '1000',
  }) async {
    final ffApiRequestBody = '''
{
  "ClientID": "${escapeStringForJson(clientID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'activities',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/ff6488b8e1cf4dc49772b316384c1aca/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=ovOfmN8nJ5HT9cvksGwtEQv32P6-uUea_n747dSdEyM',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? clientID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_clientid''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_description''',
      ));
  static String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_date''',
      ));
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_title''',
      ));
  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  static String? activitiesid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_activitiesid''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? sucsess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static int? statuscode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statuscode''',
      ));
  static List<String>? title2(dynamic response) => (getJsonField(
        response,
        r'''$..hdl_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? youtubelink(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hdl_youtubelink''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? activitycategory1(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hdl_activitycategory1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GoalapiCall {
  static Future<ApiCallResponse> call({
    String? clientID = '1000',
  }) async {
    final ffApiRequestBody = '''
{
  "ClientID": "${escapeStringForJson(clientID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'goalapi',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/60b19490034e4c9e802e175ae0aa6f21/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=trKYS0MMkC8pOCh0oeGgbhjkhn3sxmT1EFDpYN2ERxk',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? goaltitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_goaltitle''',
      ));
  static String? goaldescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].hdl_goaldescription''',
      ));
}

class SahhagetTokenCall {
  static Future<ApiCallResponse> call({
    String? clientID = '1000',
  }) async {
    final ffApiRequestBody = '''
{
  "ClientID": "${escapeStringForJson(clientID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SahhagetToken',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/04790d06fd35453ea0b0c3b5e7aad0a3/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=lTWlI4Fm74yJPJQQXK_eAPaVlViCn3skgkUUekmJ5XQ',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? accounttoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tokenType''',
      ));
}

class SahharegisterDeviceCall {
  static Future<ApiCallResponse> call({
    String? clientID = '1001',
  }) async {
    final ffApiRequestBody = '''
{
  "ExternalID": "${escapeStringForJson(clientID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SahharegisterDevice',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/5d0bb3e555bf4d049312a7eca4903dfc/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=6U24ggjY28krdnlBI-U6NXsXNRfMSeAek1sWc5zd2e4',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? profiletoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profileToken''',
      ));
  static int? profilexpiresin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  static String? tokentype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokenType''',
      ));
  static String? refreshtoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
}

class SahhadeviceInformationCall {
  static Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SahhadeviceInformation',
      apiUrl: 'https://sandbox-api.sahha.ai/api/v1/profile/deviceInformation',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckinCall {
  static Future<ApiCallResponse> call({
    String? clientid = '0',
    double? pain,
    double? mood,
    double? energy,
    double? movement,
    String? notes = '',
    String? goalaligned = '',
    String? datetime = '',
  }) async {
    final ffApiRequestBody = '''
{
  "clientid": "${clientid}",
  "pain": ${pain},
  "mood": ${mood},
  "energy": ${energy},
  "Movement": ${movement},
  "notes": "${notes}",
  "goalaligned": "${goalaligned}",
"checkindate":"${datetime}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkin',
      apiUrl:
          'https://9b92f9eb2f6ce295b1fc31d7492246.ad.environment.api.powerplatform.com:443/powerautomate/automations/direct/workflows/a39aaa61d73644d08a21173e5e14294a/triggers/manual/paths/invoke?api-version=1&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=FCM7PS_Cp53zXx8MuJ-7EVKE8qyxw5bFieGMZ1fgcYU',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
