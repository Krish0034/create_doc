import 'dart:async';

import 'package:create_doc/util/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dio/dio.dart';
import '../core/error_data.dart';

class UtilFunction
{
  bool checkEmailVerification()
  {
    bool isEmailVerified=false;
    Logger.data("user are not verified:  ${isEmailVerified}");
    FirebaseAuth.instance.currentUser?.reload();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    Logger.data("user are verified:  ${isEmailVerified}");
    return isEmailVerified;
  }

  ErrorData handleDioError(DioError exception) {
    if (exception.type == DioErrorType.badResponse) {
      final int statusCode = exception.response?.statusCode ?? 503;
      if (statusCode == 401) {
        return const ErrorData.httpUnAuthorizedError();
      } else {
        return ErrorData.httpUnknownError(exception.message ?? "");
      }
    }
    return ErrorData.httpUnknownError(exception.message ?? "");
  }

  String formatErrorMessage(String authException) {
    switch (authException) {
      case 'email-already-in-use':
        return 'Email already In Use.';
      case 'invalid-email':
        return 'Invalid Email.';
      case 'weak-password':
        return 'Weak Password. Choose a stronger one.';
      case 'user-not-found':
        return 'User not found. Please check your email.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      default:
        return 'An error occurred: $authException';
    }
  }

}