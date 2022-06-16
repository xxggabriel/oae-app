// import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:oea_app/app/locator.dart';
// import 'package:dio/dio.dart';
// import 'package:oea_app/network/api_base.dart';


// class AuthenticationInterceptor extends Interceptor {
//   final SharedService _sharedService = locator<SharedService>();

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     String? userToken = await _sharedService.currentUserToken;

//     try {
//       final breadcrumb = Breadcrumb(
//         category: "urlRequested",
//         data: {
//           "url": options.uri.toString(),
//           "method": options.method,
//           "queryParameters": options.queryParameters,
//           "extra": options.extra,
//           "headers": options.headers.entries.toSet(),
//           "data": options.data
//         },
//       );
//       Sentry.addBreadcrumb(breadcrumb);
//     } catch (e) {
//       print(e);
//     }

//     options.headers["key"] = "${ApiBase.apiKey}";
//     if (userToken != null) {
//       options.headers["authorization"] = "Bearer $userToken";
//     }

//     handler.next(options);
//   }
// }
