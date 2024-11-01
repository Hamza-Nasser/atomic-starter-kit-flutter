import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException([message]) : super("Error During Communication");
}

class BadRequestException extends ServerException {
  const BadRequestException([message])
      : super(
            message ?? "Bad Request, Please Check Your Request and Try Again");
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([message]) : super("Unauthorized");
}

class NotFoundException extends ServerException {
  const NotFoundException([message]) : super("Something went wrong");
}

class ConflictException extends ServerException {
  const ConflictException([message]) : super("Conflict Occurred");
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException([message])
      : super("Internal Server Error");
}

class ServiceUnavailableException extends ServerException {
  const ServiceUnavailableException([message])
      : super("Service Unavailable, Try Again Later");
}

class CustomException extends ServerException {
  const CustomException([super.message]);
}


class ProviderAuthCanceled extends ServerException {
  const ProviderAuthCanceled([super.message]);
}

class ProviderAuthFailed extends ServerException {
  const ProviderAuthFailed([super.message]);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException([message])
      : super("No Internet Connection");
}

class ReadFromDeviceException extends ServerException {
  const ReadFromDeviceException([message]) : super("Can't read from device");
}

class LocationPermissionDeniedException extends ServerException {
  const LocationPermissionDeniedException([message])
      : super("Location Permission Denied");
}

class ParserException extends Equatable implements Exception {
  final String? message;

  const ParserException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}
