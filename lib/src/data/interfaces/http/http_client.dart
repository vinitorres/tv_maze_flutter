import 'dart:async';

import 'http_response.dart';

///
/// Http client
///
abstract class IHttpClient {
  Future<HttpResponse> get(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    String? apiVersion,
  });

  Future<HttpResponse> post(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
  });
}
