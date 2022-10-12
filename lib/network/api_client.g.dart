// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResponse<List<EventModel>>> findEventsAll() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<EventModel>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/events',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse<List<EventModel>>.fromJson(
        _result.data!,
        (json) => (json as List<dynamic>)
            .map<EventModel>(
                (i) => EventModel.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<ApiResponse<List<EventModel>>> findEvent(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<EventModel>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/events/{id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse<List<EventModel>>.fromJson(
        _result.data!,
        (json) => (json as List<dynamic>)
            .map<EventModel>(
                (i) => EventModel.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
