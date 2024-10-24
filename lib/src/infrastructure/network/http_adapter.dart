import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../../data/data.dart';

class HttpAdapter implements IHttpClient {
  static const _defaultHeaders = {
    'content-type': 'application/json; charset=utf-8',
    'accept': 'application/json',
  };

  static const Duration _defaultConnectionTimeout = Duration(seconds: 30);

  ///
  /// Headers that will be applied to all requests.
  ///
  /// By default, `content-type` and `accept` are defined as 'application/json'.
  /// If you change this property, this keys will be ignored, so you need to set
  /// them (if necessary)
  ///
  final Map<String, String>? headers;

  ///
  /// Base URL to be set as prefix for all requests.
  ///
  final String baseUrl;

  ///
  /// Creates a new [HttpAdapter]
  ///
  HttpAdapter({
    required this.baseUrl,
    this.headers = _defaultHeaders,
  });

  late final _client = Client();

  @override
  Future<HttpResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Duration timeout = _defaultConnectionTimeout,
    String? apiVersion,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        query: query,
        method: HttpMethod.get,
        headers: headers,
        timeout: timeout,
      ),
    );
  }

  @override
  Future<HttpResponse> post(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Duration timeout = _defaultConnectionTimeout,
    String? apiVersion,
    Map<String, dynamic>? query,
  }) async {
    const method = HttpMethod.post;
    return _handleRequest(
      HttpOptions(
        path: path,
        method: method,
        data: body,
        headers: headers,
        timeout: timeout,
        query: query,
      ),
    );
  }

  Future<HttpResponse> _handleRequest(HttpOptions httpOptions) async {
    final HttpOptions options =
        _setDefaultHeaders(await _makeCompleteURL(httpOptions));

    try {
      final response = await _requestFactory(options);

      final httpResponse = await _handleResponse(response);
      return httpResponse;
    } catch (error, _) {
      throw UnknownConnectionError(data: error.toString());
    }
  }

  Future<HttpResponse> _handleResponse(
    Response response,
  ) async {
    final httpStatus = HttpStatus.values.firstWhere(
      (status) => status.code == response.statusCode,
    );

    if (httpStatus.code.between(200, 299)) {
      switch (httpStatus) {
        case HttpStatus.ok:
        case HttpStatus.created:
        case HttpStatus.multiStatus:
          return await _handleData(response, httpStatus);
        case HttpStatus.accepted:
          return HttpResponse.empty(status: httpStatus);
        default:
          return HttpResponse.empty();
      }
    }
    if (httpStatus.code.between(400, 499)) {
      if (httpStatus == HttpStatus.unauthorized) {
        throw UnauthorizedException(
          message: response.reasonPhrase ?? '',
          data: response.body,
        );
      }
      if (httpStatus == HttpStatus.forbidden) {
        throw ForbiddenException(
          message: response.reasonPhrase ?? '',
          data: response.body,
        );
      }

      if (httpStatus == HttpStatus.notFound) {
        throw NotFoundException(
          message: response.reasonPhrase ?? '',
          data: response.body,
        );
      }

      throw BadRequestException(
        status: httpStatus,
        message: response.reasonPhrase ?? '',
        data: response.body,
      );
    }

    throw switch (httpStatus) {
      HttpStatus.gatewayTimeout => GatewayTimeoutException(
          message: response.reasonPhrase ?? '',
        ),
      HttpStatus.serviceUnavailable => ServiceUnavailableException(
          message: response.reasonPhrase ?? '',
        ),
      _ => ServerErrorException(
          message: response.reasonPhrase ?? '',
          data: response.body,
        ),
    };
  }

  Future<HttpResponse> _handleData(
    Response response,
    HttpStatus status,
  ) async {
    final responseData = await _readResponse(response);
    if (responseData == null) {
      return HttpResponse.empty(status: status);
    }
    return HttpResponse.success(responseData, status: status);
  }

  Future<Object?> _readResponse(Response response) async {
    final Response(:body, :bodyBytes) = response;

    if (body.isEmpty) return null;

    try {
      return jsonDecode(utf8.decode(bodyBytes, allowMalformed: true));
    } catch (_) {
      return body;
    }
  }

  HttpOptions _setDefaultHeaders(HttpOptions options) {
    final mergedHeaders = {...?headers, ...?options.headers};
    return options.copyWith(headers: mergedHeaders);
  }

  Future<Response> _requestFactory(HttpOptions options) async {
    final HttpOptions(
      :path,
      :timeout,
      :url,
      :method,
      :headers,
      :data,
      :query,
    ) = options;

    final uri = Uri.parse(url!).replace(
      queryParameters: query?.map(
        (key, value) => MapEntry(
          key,
          _parseValuesToString(value),
        ),
      ),
    );

    return (switch (method) {
      HttpMethod.get => _client.get(
          uri,
        ),
      HttpMethod.post => _client.post(
          uri,
          body: jsonEncode(data),
        ),
    })
        .timeout(timeout);
  }

  Future<HttpOptions> _makeCompleteURL(HttpOptions options) async {
    final url = baseUrl;

    return options.copyWith(
      url: '$url${options.path}',
    );
  }

  _parseValuesToString(value) {
    if (value is List) {
      return value.map(_parseValuesToString).toList();
    }

    return value is num || value is bool ? value.toString() : value;
  }
}

/// Extension for status code
extension StatusCodeExtension on int {
  ///
  /// Checks if it's between [min] and [max] values
  ///
  bool between(int min, int max) {
    return this >= min && this <= max;
  }
}
