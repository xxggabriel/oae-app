import 'dart:io';

import 'package:oea_app/models/event_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'package:oea_app/network/api_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

// BUSCA DE DADOS
  @GET("/api/v1/admin/complementary-activities")
  Future<ApiResponse<List<EventModel>>> findEventsAll();

  @GET("/api/v1/admin/complementary-activitie" )
  Future<ApiResponse<List<EventModel>>> findEvent(@Query("id") int id);

 
}
