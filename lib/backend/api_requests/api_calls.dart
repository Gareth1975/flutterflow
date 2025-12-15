import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Sahha Platform v1 Group Code

class SahhaPlatformV1Group {
  static String getBaseUrl() => 'https://sandbox-api.sahha.ai/';
  static Map<String, String> headers = {};
  static GetProfileIntegrationsCall getProfileIntegrationsCall =
      GetProfileIntegrationsCall();
  static GetProfileIntegrationsByExternalIdCall
      getProfileIntegrationsByExternalIdCall =
      GetProfileIntegrationsByExternalIdCall();
  static ApiV1ProfileIntegrationGarminCallbackGETCall
      apiV1ProfileIntegrationGarminCallbackGETCall =
      ApiV1ProfileIntegrationGarminCallbackGETCall();
  static ApiV1ProfileIntegrationGarminConnectGETCall
      apiV1ProfileIntegrationGarminConnectGETCall =
      ApiV1ProfileIntegrationGarminConnectGETCall();
  static ApiV1AccountProfileexternalIdGETCall
      apiV1AccountProfileexternalIdGETCall =
      ApiV1AccountProfileexternalIdGETCall();
  static ApiV1AccountProfileSearchGETCall apiV1AccountProfileSearchGETCall =
      ApiV1AccountProfileSearchGETCall();
  static ApiV1ProfileDataLogPOSTCall apiV1ProfileDataLogPOSTCall =
      ApiV1ProfileDataLogPOSTCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static RegisterAProfileUsingAccountTokenForServerToServerIntegrationCall
      registerAProfileUsingAccountTokenForServerToServerIntegrationCall =
      RegisterAProfileUsingAccountTokenForServerToServerIntegrationCall();
  static RegisterProfileUsingApplicationCredentialsForSDKIntegrationCall
      registerProfileUsingApplicationCredentialsForSDKIntegrationCall =
      RegisterProfileUsingApplicationCredentialsForSDKIntegrationCall();
  static GetProfileTokenUsingAccountTokenCall
      getProfileTokenUsingAccountTokenCall =
      GetProfileTokenUsingAccountTokenCall();
  static DeleteProfilesAccountAuthorizationCall
      deleteProfilesAccountAuthorizationCall =
      DeleteProfilesAccountAuthorizationCall();
  static GetProfileInformationCall getProfileInformationCall =
      GetProfileInformationCall();
  static GetProfileArchetypesProfileAuthorizationCall
      getProfileArchetypesProfileAuthorizationCall =
      GetProfileArchetypesProfileAuthorizationCall();
  static GetProfileArchetypesAccountAuthorizationCall
      getProfileArchetypesAccountAuthorizationCall =
      GetProfileArchetypesAccountAuthorizationCall();
  static GetBiomarkersProfileAuthorizationCall
      getBiomarkersProfileAuthorizationCall =
      GetBiomarkersProfileAuthorizationCall();
  static GetProfileBiomarkersAccountAuthorizationCall
      getProfileBiomarkersAccountAuthorizationCall =
      GetProfileBiomarkersAccountAuthorizationCall();
  static AmendDemographicInformationPutCall amendDemographicInformationPutCall =
      AmendDemographicInformationPutCall();
  static AmendDemographicInformationCall amendDemographicInformationCall =
      AmendDemographicInformationCall();
  static GetProfileDemographicInformationCall
      getProfileDemographicInformationCall =
      GetProfileDemographicInformationCall();
  static AmendDeviceInformationCall amendDeviceInformationCall =
      AmendDeviceInformationCall();
  static GetProfileDeviceInformationCall getProfileDeviceInformationCall =
      GetProfileDeviceInformationCall();
  static GetProfileComparisonsProfileAuthorizationCall
      getProfileComparisonsProfileAuthorizationCall =
      GetProfileComparisonsProfileAuthorizationCall();
  static GetProfileComparisonsAccountAuthorizationCall
      getProfileComparisonsAccountAuthorizationCall =
      GetProfileComparisonsAccountAuthorizationCall();
  static GetProfileTrendsProfileAuthorizationCall
      getProfileTrendsProfileAuthorizationCall =
      GetProfileTrendsProfileAuthorizationCall();
  static GetProfileTrendsAccountAuthorizationCall
      getProfileTrendsAccountAuthorizationCall =
      GetProfileTrendsAccountAuthorizationCall();
  static GetProfileScoresProfileAuthorizationCall
      getProfileScoresProfileAuthorizationCall =
      GetProfileScoresProfileAuthorizationCall();
  static GetProfileScoresAccountAuthorizationCall
      getProfileScoresAccountAuthorizationCall =
      GetProfileScoresAccountAuthorizationCall();
  static GetAccountTokenCall getAccountTokenCall = GetAccountTokenCall();
}

class GetProfileIntegrationsCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Integrations',
      apiUrl: '${baseUrl}/api/v1/profile/integration',
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

class GetProfileIntegrationsByExternalIdCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Integrations by ExternalId',
      apiUrl: '${baseUrl}/api/v1/profile/integration/${externalId}',
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

class ApiV1ProfileIntegrationGarminCallbackGETCall {
  Future<ApiCallResponse> call({
    String? oauthToken = '',
    String? oauthVerifier = '',
    String? state = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/profile/integration/garmin/callback GET',
      apiUrl: '${baseUrl}/api/v1/profile/integration/garmin/callback',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'oauth_token': oauthToken,
        'oauth_verifier': oauthVerifier,
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiV1ProfileIntegrationGarminConnectGETCall {
  Future<ApiCallResponse> call({
    bool? redirect,
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/profile/integration/garmin/connect GET',
      apiUrl: '${baseUrl}/api/v1/profile/integration/garmin/connect',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'redirect': redirect,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiV1AccountProfileexternalIdGETCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/account/profile/{externalId} GET',
      apiUrl: '${baseUrl}/api/v1/account/profile/${externalId}',
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

class ApiV1AccountProfileSearchGETCall {
  Future<ApiCallResponse> call({
    String? searchParameter = '',
    int? currentPage,
    int? pageSize,
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/account/profile/search GET',
      apiUrl: '${baseUrl}/api/v1/account/profile/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'searchParameter': searchParameter,
        'currentPage': currentPage,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiV1ProfileDataLogPOSTCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
[
  {
    "id": "",
    "parentId": "",
    "logType": "",
    "dataType": "",
    "value": "55",
    "unit": "55",
    "source": "Iphone X",
    "sourceId": "Iphone X",
    "recordingMethod": "RECORDING_METHOD_UNKNOWN",
    "deviceId": "C85330AD-C691-453C-8CB6-353AB75FD611",
    "deviceType": "iPhone13,2",
    "periodicity": "daily",
    "aggregation": "sum",
    "startDateTime": "2022-01-01T00:00:00+12:00",
    "endDateTime": "2022-01-01T00:00:00+12:00",
    "additionalProperties": {}
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/profile/data/log POST',
      apiUrl: '${baseUrl}/api/v1/profile/data/log',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
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

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "refreshToken": "hIw0LuHXHZKMD7bWV0DlGWyTAyHqO8EceL"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Refresh Token',
      apiUrl: '${baseUrl}/api/v1/oauth/profile/refreshToken',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
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

class RegisterAProfileUsingAccountTokenForServerToServerIntegrationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "externalId": "6980b34e-14f9-47ef-b6f8-80a18b206a8e"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Register a Profile using Account Token (For Server to Server Integration)',
      apiUrl: '${baseUrl}/api/v1/oauth/profile/register',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
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

class RegisterProfileUsingApplicationCredentialsForSDKIntegrationCall {
  Future<ApiCallResponse> call({
    String? appId = '',
    String? appSecret = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "externalId": "6980b34e-14f9-47ef-b6f8-80a18b206a8e"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Register Profile using Application Credentials (For SDK Integration)',
      apiUrl: '${baseUrl}/api/v1/oauth/profile/register/appId',
      callType: ApiCallType.POST,
      headers: {
        'appId': '${appId}',
        'appSecret': '${appSecret}',
        'Authorization': '${authorization}',
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

class GetProfileTokenUsingAccountTokenCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "externalId": "C85330AD-C691-453C-8CB6-353AB75FD611",
  "readOnly": "false",
  "lifetime": "86400"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Token using Account Token',
      apiUrl: '${baseUrl}/api/v1/oauth/profile/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
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

class DeleteProfilesAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete profiles (Account authorization)',
      apiUrl: '${baseUrl}/api/v1/profile',
      callType: ApiCallType.DELETE,
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

class GetProfileInformationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Information',
      apiUrl: '${baseUrl}/api/v1/profile',
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

class GetProfileArchetypesProfileAuthorizationCall {
  Future<ApiCallResponse> call({
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? periodicity = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile archetypes (Profile Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/archetypes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'periodicity': periodicity,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileArchetypesAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? periodicity = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile archetypes (Account Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/archetypes/${externalId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'periodicity': periodicity,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBiomarkersProfileAuthorizationCall {
  Future<ApiCallResponse> call({
    List<String>? categoriesList,
    List<String>? typesList,
    String? startDateTime = '',
    String? endDateTime = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();
    final categories = _serializeList(categoriesList);
    final types = _serializeList(typesList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get biomarkers, (Profile Authorization).',
      apiUrl: '${baseUrl}/api/v1/profile/biomarker',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'categories': categories,
        'types': types,
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileBiomarkersAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    List<String>? categoriesList,
    List<String>? typesList,
    String? startDateTime = '',
    String? endDateTime = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();
    final categories = _serializeList(categoriesList);
    final types = _serializeList(typesList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile biomarkers (Account Authorization).',
      apiUrl: '${baseUrl}/api/v1/profile/biomarker/${externalId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'categories': categories,
        'types': types,
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AmendDemographicInformationPutCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "age": "35",
  "gender": "Male",
  "birthDate": "1990-01-01"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Amend Demographic Information put',
      apiUrl: '${baseUrl}/api/v1/profile/demographic',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': '${authorization}',
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

class AmendDemographicInformationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "age": "35",
  "gender": "Male",
  "birthDate": "1990-01-01"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Amend Demographic Information',
      apiUrl: '${baseUrl}/api/v1/profile/demographic',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '${authorization}',
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

class GetProfileDemographicInformationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Demographic Information',
      apiUrl: '${baseUrl}/api/v1/profile/demographic',
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

class AmendDeviceInformationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sdkId": "ios_swift",
  "sdkVersion": "3.4.1",
  "appId": "com.sahha.app",
  "appVersion": "0.1.4",
  "deviceId": "C85330AD-C691-453C-8CB6-353AB75FD611",
  "deviceType": "iPhone",
  "deviceModel": "iPhone X",
  "system": "iOS",
  "systemVersion": "15.1",
  "timeZone": "+12:00"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Amend Device Information',
      apiUrl: '${baseUrl}/api/v1/profile/deviceInformation',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': '${authorization}',
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

class GetProfileDeviceInformationCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile Device Information',
      apiUrl: '${baseUrl}/api/v1/profile/deviceInformation',
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

class GetProfileComparisonsProfileAuthorizationCall {
  Future<ApiCallResponse> call({
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? category = '',
    String? periodicity = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile comparisons (Profile Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/insight/comparison',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'category': category,
        'periodicity': periodicity,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileComparisonsAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? category = '',
    String? periodicity = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile comparisons (Account Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/insight/comparison/${externalId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'category': category,
        'periodicity': periodicity,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileTrendsProfileAuthorizationCall {
  Future<ApiCallResponse> call({
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? category = '',
    String? periodicity = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile trends (Profile Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/insight/trend',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'category': category,
        'periodicity': periodicity,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileTrendsAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    String? startDateTime = '',
    String? endDateTime = '',
    String? name = '',
    String? category = '',
    String? periodicity = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile trends (Account Authorization)',
      apiUrl: '${baseUrl}/api/v1/profile/insight/trend/${externalId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'name': name,
        'category': category,
        'periodicity': periodicity,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileScoresProfileAuthorizationCall {
  Future<ApiCallResponse> call({
    List<String>? typesList,
    String? startDateTime = '',
    String? endDateTime = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();
    final types = _serializeList(typesList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile scores (Profile Authorization).',
      apiUrl: '${baseUrl}/api/v1/profile/score',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'types': types,
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileScoresAccountAuthorizationCall {
  Future<ApiCallResponse> call({
    String? externalId = '',
    List<String>? typesList,
    String? startDateTime = '',
    String? endDateTime = '',
    String? version = '',
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();
    final types = _serializeList(typesList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get profile scores (Account Authorization).',
      apiUrl: '${baseUrl}/api/v1/profile/score/${externalId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'types': types,
        'startDateTime': startDateTime,
        'endDateTime': endDateTime,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccountTokenCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
  }) async {
    final baseUrl = SahhaPlatformV1Group.getBaseUrl();

    final ffApiRequestBody = '''
{
    "clientId": "ducUEK60cxAjYqjjL8xQbKZHbAAnkROI",
    "clientSecret": "bUtlKdtVEwRXbHNquLXCXjPj7OUBpPueqdoNELlgxwdyoICcNKW2XpJERCjTFsH6"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Account Token',
      apiUrl: '${baseUrl}/api/v1/oauth/account/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accountToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountToken''',
      ));
  String? tokenType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokenType''',
      ));
}

/// End Sahha Platform v1 Group Code

class APIloginCall {
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
      callName: 'APIlogin',
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
      decodeUtf8: true,
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
  static int? activitycategory(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$..hdl_activitycategory''',
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
