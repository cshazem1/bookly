import 'package:dio/dio.dart';

abstract class Failure {
  String message;
  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "connection Timeout With ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "send Timeout With ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "receive Timeout With ApiServer");

      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(message: "Request to ApiServer was Canceled");

      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(message: "No Internet Connection");
        }
        return ServerFailure(message: "Unexpected Error");
      default:
        return ServerFailure(
            message: "Ops There was an Error ,please try again");
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic badResponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: badResponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(message: "Method not Found");
    } else if (statusCode == 500) {
      return ServerFailure(message: "Internal Server Error, please try again ");
    } else {
      return ServerFailure(message: "Ops There was an Error ,please try again");
    }
  }
}
