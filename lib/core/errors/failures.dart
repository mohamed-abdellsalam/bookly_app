import 'package:dio/dio.dart';

abstract class Failure {
  final String errMesage;

  Failure({required this.errMesage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMesage});

  factory ServerFailure.fromDioError(DioException dioEx) {
    switch (dioEx.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMesage: 'Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMesage: 'Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMesage: 'Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMesage: 'Bad Certificate received from ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure(errMesage: 'Bad Response received from ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure(errMesage: 'Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMesage: 'Connection Error with ApiServer');
      case DioExceptionType.unknown:
        if (dioEx.message!.contains('SocketException')) {
          return ServerFailure(errMesage: 'No internet Connection');
        }
        return ServerFailure(errMesage: 'Unknown error occurred, try again');
      default:
        return ServerFailure(errMesage: 'there was an error');
    }
  }
}
