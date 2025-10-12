
abstract class Failuer {
  final String errMessage;

  Failuer(this.errMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessage);

  factory ServerFailuer.fromErrorExption(Object error) {
    switch (error.runtimeType) {
      // case DioException:
      //   return ServerFailuer.fromDioException(error as DioException);
      default:
        return ServerFailuer('Opps There was an Error, Please try again');
    }
  }
}

// import 'package:dio/dio.dart';

// abstract class Failuer {
//   final String errorMassage;

//   const Failuer(this.errorMassage);
// }

// class ServerFailure extends Failuer {
//   ServerFailure(super.errorMassage);

//   factory ServerFailure.fromDioException(DioException dioexp) {
//     switch (dioexp.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('Connection timeout with ApiServer');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure('Send timeout with ApiServer');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure('Receive timeout with ApiServer');
//       case DioExceptionType.badResponse:
//         return ServerFailure.fromResponse(
//             dioexp.response!.statusCode, dioexp.response!.data);
//       case DioExceptionType.cancel:
//         return ServerFailure('Request to ApiServer was canceld');
//       case DioExceptionType.unknown:
//         if (dioexp.message!.contains('SocketException')) {
//           return ServerFailure('No Internet Connection');
//         }
//         return ServerFailure('Unexpected Error, Please try again!');
//       default:
//         return ServerFailure('Opps There was an Error, Please try again');
//     }
//   }

//   factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure('Your request not found, Please try later!');
//     } else if (statusCode == 500) {
//       return ServerFailure('Internal Server error, Please try later');
//     } else {
//       return ServerFailure('Opps There was an Error, Please try again');
//     }
//   }
// }
