// import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
// import 'package:flutter/foundation.dart';
// import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';
// import 'package:oea_app/network/api_base.dart';
// import 'package:oea_app/network/api_client.dart';
// import 'package:oea_app/network/interceptors/authentication_interceptor.dart';
// import 'package:oea_app/network/interceptors/cache_interceptor.dart';
// import 'package:oea_app/services/auth_service.dart';
// import 'package:oea_app/services/notification_service.dart';
// import 'package:oea_app/services/shared_service.dart';
// import 'package:dio/dio.dart';

// final locator = StackedLocator.instance;

// Future setupLocator() async {
//   final store = MemCacheStore();

//   locator.registerLazySingleton(() => SharedService());
//   locator.registerLazySingleton(() => AuthService(store));
//   locator.registerLazySingleton(() => NavigationService());
//   locator.registerLazySingleton(() => BottomSheetService());
//   locator.registerLazySingleton(() => SnackbarService());
//   locator.registerLazySingleton(() => DialogService());
//   locator.registerSingletonAsync<Dio>(() => setupHttpClient(store));

//   locator.registerSingletonWithDependencies<ApiClient>(() => ApiClient(locator<Dio>(), baseUrl: ApiBase.baseUrl),
//       dependsOn: [Dio]);

//   locator.registerSingletonWithDependencies<NotificationService>(() => NotificationService(locator<ApiClient>()),
//       dependsOn: [ApiClient]);
// }

// Future<Dio> setupHttpClient(MemCacheStore store) async {
//   final cacheOptions = CacheOptions(
//     store: store,
//     policy: CachePolicy.refreshForceCache,
//   );

//   var cacheInterceptor = DioCacheInterceptor(options: cacheOptions);

//   BaseOptions options = new BaseOptions(
//     receiveDataWhenStatusError: true,
//     connectTimeout: 180 * 1000,
//     receiveTimeout: 180 * 1000,
//   );

//   Dio dio = Dio(options);
//   dio.options.headers["Accept"] = "application/json";
//   dio.interceptors.addAll([
//     CacheInterceptor(options: cacheOptions, store: store),
//     cacheInterceptor,
//     LogInterceptor(),
//     AuthenticationInterceptor()
//   ]);

//   if (!kReleaseMode) {
//     // const charlesIp = String.fromEnvironment('CHARLES_PROXY_IP_', defaultValue: "192.168.3.39");
//     // if (charlesIp.isNotEmpty) {
//     //   print('#CharlesProxyEnabled: $charlesIp');

//     //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
//     //     client.findProxy = (uri) => "PROXY $charlesIp:8888;";
//     //     client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//     //   };
//     // }
//   }
//   return dio;
// }
