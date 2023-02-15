import 'package:dio/dio.dart';
import 'package:tv_shows_app/network/http_client.dart';

class HttpClientImpl extends HttpClient {
  final Dio client;

  HttpClientImpl(this.client);

  @override
  get(String url) {
    return client.get(url);
  }
  
}
