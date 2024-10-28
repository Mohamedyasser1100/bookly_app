import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With Apiserver');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With Apiserver');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With Apiserver');

      case DioExceptionType.badCertificate:
      // TODO: Handle this case.

// ده بتاع ال factory اللي تحت
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Requset to Apiserver was cancel');

      case DioExceptionType.connectionError:
      // TODO: Handle this case.

      case DioExceptionType.unknown:
      // TODO: Handle this case.

      default:
        return ServerFailure('Opps there was an error , please try again');
    }
  }
// علي حسب الrequest اللي جاي هيقولك المشكله منين
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // هيعرض ال message اللي جايه من error في ال response بتاع ال postman
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your requst not found , please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try again later');
    } else {
      return ServerFailure('Opps there was an error , please try again');
    }
  }
}
