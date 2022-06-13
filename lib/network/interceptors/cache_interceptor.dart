import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class CacheInterceptor extends Interceptor {
  CacheInterceptor({
    required this.options,
    required this.store,
    this.duration = const Duration(seconds: 60),
  });

  final CacheOptions options;
  final CacheStore store;
  final Duration duration;

  @override
  void onRequest(RequestOptions request, RequestInterceptorHandler handler) async {
    final key = options.keyBuilder(request);

    bool ignoreCache = request.headers['cache-control'] == "no-cache";
    final cache = await store.get(key);

    if (!ignoreCache && cache != null && DateTime.now().difference(cache.responseDate).compareTo(duration) < 0) {
      handler.resolve(cache.toResponse(request, fromNetwork: false));
      return;
    }

    super.onRequest(request, handler);
  }
}
