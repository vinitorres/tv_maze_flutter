import 'http_status.dart';

class HttpResponse {
  ///
  /// Http staus code
  ///
  final HttpStatus status;

  ///
  /// Response data
  ///
  final dynamic data;

  ///
  /// Creates a new [HttpResponse]
  ///
  const HttpResponse({
    required this.status,
    this.data,
  });

  factory HttpResponse.success(
    Object? data, {
    HttpStatus status = HttpStatus.ok,
  }) {
    return HttpResponse(status: status, data: data);
  }

  factory HttpResponse.empty({HttpStatus status = HttpStatus.noContent}) {
    return HttpResponse(status: status);
  }
}
