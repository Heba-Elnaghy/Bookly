import 'package:dio/dio.dart';

abstract class Falure {
  final String errMessage;

  Falure(this.errMessage);
}

class ServerFailure extends Falure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure("connectTimeout with ApiServer");

      case DioErrorType.sendTimeout:
        return ServerFailure("Send Timeout with ApiServer");

      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive Timeout with ApiServer");

      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure("Request to ApiServer was canceld");

      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          return ServerFailure("No Internet");
        }
        return ServerFailure("Unexpected Error");
      default:
        return ServerFailure("There was an error");
    }
  }

  factory ServerFailure.fromResponse(int? statuseCode, dynamic response) {
    if (statuseCode == 400 || statuseCode == 401 || statuseCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuseCode == 404) {
      return ServerFailure("Not found");
    } else if (statuseCode == 500) {
      return ServerFailure("Nnternal server error");
    } else {
      return ServerFailure("There was an error");
    }
  }
}
