import 'http_status.dart';

///
/// Http base exception
///
abstract class IHttpException {
  ///
  /// Http status code
  ///
  final HttpStatus? status;

  ///
  /// Error message
  ///
  final String message;

  ///
  /// Optional data
  ///
  final dynamic data;

  ///
  /// Creates a new [IHttpException]
  ///
  const IHttpException(
    this.status, {
    this.data,
    this.message = '',
  });
}

///
/// Exception for [HttpStatus.badRequest]
///
class BadRequestException extends IHttpException {
  ///
  /// Creates a new [BadRequestException]
  ///
  const BadRequestException({
    HttpStatus? status,
    Object? data,
    String message = '',
  }) : super(
          status ?? HttpStatus.badRequest,
          data: data,
          message: message,
        );
}

///
/// Exception for [HttpStatus.internalServerError]
///
class ServerErrorException extends IHttpException {
  ///
  /// Creates a new [ServerErrorException]
  ///
  const ServerErrorException({
    String message = '',
    Object? data,
  }) : super(
          HttpStatus.serverError,
          data: data,
          message: message,
        );
}

///
/// Exception for [HttpStatus.unprocessableEntity]
///
class UnprocessableEntityException extends IHttpException {
  ///
  /// Creates a new [UnprocessableEntityException]
  ///
  const UnprocessableEntityException({
    String message = '',
    Object? data,
  }) : super(
          HttpStatus.unprocessableEntity,
          message: message,
          data: data,
        );
}

///
/// Exception for [HttpStatus.unauthorized]
///
class UnauthorizedException extends IHttpException {
  ///
  /// Creates a new [UnauthorizedException]
  ///
  const UnauthorizedException({
    String message = '',
    dynamic data,
  }) : super(
          HttpStatus.unauthorized,
          message: message,
          data: data,
        );
}

///
/// Exception for [HttpStatus.forbidden]
///
class ForbiddenException extends IHttpException {
  ///
  /// Creates a new [ForbiddenException]
  ///
  const ForbiddenException({
    String message = '',
    dynamic data,
  }) : super(
          HttpStatus.forbidden,
          message: message,
          data: data,
        );
}

///
/// Exception for [HttpStatus.requestTimeout]
///
class RequestTimeoutException extends IHttpException {
  ///
  /// Creates a new [RequestTimeoutException]
  ///
  const RequestTimeoutException({
    String message = '',
  }) : super(
          HttpStatus.requestTimeout,
          message: message,
        );
}

///
/// Exception for [HttpStatus.gatewayTimeout]
///
class GatewayTimeoutException extends IHttpException {
  ///
  /// Creates a new [RequestTimeoutException]
  ///
  const GatewayTimeoutException({
    String message = '',
  }) : super(
          HttpStatus.gatewayTimeout,
          message: message,
        );
}

///
/// Exception for [HttpStatus.failedDependency]
///
class FailedDependencyException extends IHttpException {
  ///
  /// Creates a new [FailedDependencyException]
  ///
  const FailedDependencyException({
    String message = '',
  }) : super(
          HttpStatus.failedDependency,
          message: message,
        );
}

///
/// Unknown connection error, without an error code associated.
///
class UnknownConnectionError extends IHttpException {
  /// Creates a new [UnknownConnectionError]
  const UnknownConnectionError({
    Object? data,
    String message = '',
  }) : super(
          null,
          data: data,
          message: message,
        );
}

/// Exception for [HttpStatus.notFound]
class NotFoundException extends IHttpException {
  /// Creates a new [NotFoundException]
  const NotFoundException({Object? super.data, super.message})
      : super(HttpStatus.notFound);
}

/// Exception for [HttpStatus.serviceUnavailable]
class ServiceUnavailableException extends IHttpException {
  /// Creates a new [ServiceUnavailableException]
  const ServiceUnavailableException({
    Object? super.data,
    super.message,
  }) : super(HttpStatus.serviceUnavailable);
}
