import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_method.dart';

part 'http_options.freezed.dart';

/// Default timeout duration for a connection.
///
/// This duration specifies how long to wait before a connection attempt is abandoned.
/// It is initialized with a `Duration` of 30 seconds.
const kDefaultConnectionTimeout = Duration(seconds: 30);

/// HTTP request options
@freezed
sealed class HttpOptions with _$HttpOptions {
  /// Create a [HttpOptions]
  const factory HttpOptions({
    required String path,
    required HttpMethod method,
    String? url,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    @Default(Duration(seconds: 10)) Duration timeout,
  }) = _HttpOptions;
}
