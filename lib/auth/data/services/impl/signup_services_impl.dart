import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../../../baseResponse/base_response.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/common_dialog.dart';
import '../../../../util/logger.dart';
import '../../../model/user_data.dart';
import '../../repositories/signup_repository.dart';
import '../signup_services.dart';

@Injectable(as: SignUpServices)
class SignUpServicesImpl extends SignUpServices {
  SignUpServicesImpl(this._signUpRepository);

  final SignUpRepository _signUpRepository;

  final _authInstances = FirebaseAuth.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType}) async {
    UserData? userDataResponse;
    Logger.data("Create User Function in service ${userData.toJson()}");
    Logger.data("Create User Function in service 1 $authType");
    try {
      if (authType == AuthType.EMAIL) {
        await _authInstances.createUserWithEmailAndPassword(
          email: userData.email ?? '',
          password: userData.password ?? '',
        ).then((value) async {
            Logger.data("createUserWithEmailAndPassword is ${value.toString()}");
            final user = value.user;
            if (user != null) {
              Logger.data("after checking data is user: $user");
              userData.uid = user.uid;
              userData.authType = authType.toString();
              Logger.data("after set data is UserData: ${userData.toJson()}");
            }
          },
        );
        Logger.data("after set data is UserData: for ${userData.toJson()}");
        return right(await _signUpRepository.createUser(userData: userData, authType: authType));
      }
      else{
        return right(userDataResponse??UserData());
      }
      return right(userDataResponse??UserData());
    } on FirebaseAuthException catch (e) {
      Logger.data("Firebase Auth Exception is: ${e.code}");
      return left(ErrorData.httpUnknownError(e.code));
    } on DioError catch (exception) {
      Logger.data("DioError Exception is: ${exception}");
      return left(handleDioError(exception));
    } catch (e) {
      Logger.data("Exception is: ${e}");
      String? error=e.toString();
      return left(ErrorData.httpUnknownError(error));
    }
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
}
