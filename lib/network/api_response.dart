import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';
import 'package:oea_app/network/message_response.dart';

import 'package:sentry/sentry.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  final T data;

  final String? message;

  ApiResponse(this.data, this.message);
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return ApiResponse<T>(
      fromJsonT(json['data']),
      json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => <String, dynamic>{
        'data': toJsonT(this.data),
        'message': this.message,
      };

  static ApiResponse<MessageResponse>? fromError(Object error, StackTrace? stackTrace) {
    var isAuth = false;
    if (error is DioError) {
      isAuth = error.response?.statusCode == 401;
    }

    if (!isAuth) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );
    }

    if (error is DioError) {
      if (error.response?.data != null) {
        if (error.response!.data is Map) {
          return ApiResponse<MessageResponse>(MessageResponse.fromJson(error.response!.data["data"]), error.message);
        } else if (error.response!.data is String && error.response!.data!.isNotEmpty) {
          return ApiResponse<MessageResponse>(MessageResponse(message: error.response!.data), error.message);
        }
      }
      if (error.message.isNotEmpty) {
        return ApiResponse<MessageResponse>(MessageResponse(message: error.message), error.message);
      }
    }
  }
}
