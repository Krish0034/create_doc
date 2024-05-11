import 'package:create_doc/util/shered_preferences.dart';
import 'package:create_doc/util/utility_function.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import '../../../model/phone_auth_provider_model.dart';
import '../../../model/user_data.dart';
import '../../repositories/signup_repository.dart';
import '../signup_services.dart';

@Injectable(as: SignUpServices)
class SignUpServicesImpl extends SignUpServices {
  final SignUpRepository _signUpRepository;
  final _authInstances = FirebaseAuth.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  SignUpServicesImpl(this._signUpRepository);
  @override
  Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) async
  {
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
              PreferencesShared.setUuid(uuid: userData.uid);
              userData.authType = authType.toString();
              Logger.data("after set data is UserData: ${userData.toJson()}");
            }
          },
        );
        Logger.data("after set data is UserData: for ${userData.toJson()}");
        return right(await _signUpRepository.createUser(userData: userData, authType: authType));
      }
      else if(authType == AuthType.PHONE)
      {
        Logger.data("phone auth credential in services ${phoneAuthProviderModel?.codeModelResponse?.verificationId??''}");
        Logger.data("phone auth credential in services sms code ${phoneAuthProviderModel?.otpCode??""}");
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: phoneAuthProviderModel?.codeModelResponse?.verificationId??'', smsCode: phoneAuthProviderModel?.otpCode??"");
        await _authInstances.signInWithCredential(credential).then((value)async {
          Logger.data("createUserWithPhoneNumber is ${value.toString()}");
          final user = value.user;
          if (user != null) {
            Logger.data("after checking data is user: $user");
            userData.uid = user.uid;
            PreferencesShared.setUuid(uuid: userData.uid);
            userData.authType = authType.toString();
            Logger.data("after set data is UserData: ${userData.toJson()}");
          }
        });
        return right(await _signUpRepository.createUser(userData: userData, authType: authType));
  }
      else{
        return right(userDataResponse??UserData());
      }
    } on FirebaseAuthException catch (e) {
      Logger.data("Firebase Auth Exception is: ${e.code}");
      return left(ErrorData.httpUnknownError(e.code));
    } on DioError catch (exception) {
      Logger.data("DioError Exception is: $exception");
      return left(UtilFunction().handleDioError(exception));
    } catch (e) {
      Logger.data("Exception is: $e");
      String? error=e.toString();
      return left(ErrorData.httpUnknownError(error));
    }
  }

}
