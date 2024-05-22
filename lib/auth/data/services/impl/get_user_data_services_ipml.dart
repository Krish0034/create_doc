import 'package:create_doc/auth/model/user_data.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../util/logger.dart';
import '../../../../util/shered_preferences.dart';
import '../../../../util/utility_function.dart';
import '../../../model/phone_auth_provider_model.dart';
import '../../repositories/signin_repository.dart';
import '../get_user_data_services.dart';

@Injectable(as: GetUserDataServices)
class GetUserDataServicesImpl extends GetUserDataServices
{
  final SignInRepository _singInRepository;
  GetUserDataServicesImpl(this._singInRepository);
  final _authInstances = FirebaseAuth.instance;

  @override
  Future<Either<ErrorData, UserData>> getUserDataByPhone({required String phoneNumber, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) async {

    try
    {
      if(authType == AuthType.PHONE)
      {
        String? userId;
        Logger.data("phone auth credential in services ${phoneAuthProviderModel?.codeModelResponse?.verificationId??''}");
        Logger.data("phone auth credential in services sms code ${phoneAuthProviderModel?.otpCode??""}");
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: phoneAuthProviderModel?.codeModelResponse?.verificationId??'', smsCode: phoneAuthProviderModel?.otpCode??"");
        await _authInstances.signInWithCredential(credential).then((value)async {
          Logger.data("createUserWithPhoneNumber is ${value.toString()}");
          final user = value.user;
          if (user != null) {
            Logger.data("after checking data is user: $user");
            userId = user.uid;
            PreferencesShared.setUuid(uuid: user.uid);
          }
        });
        return right(await _singInRepository.getUserData(userId: userId??"")??UserData());
      }
      else
      {
        return right(UserData());
      }

    }on FirebaseAuthException catch (e) {
      return Left(ErrorData.httpUnknownError("$e"));
    } on DioError catch (exception) {
      Logger.data("DioError Exception is: $exception");
      return Left(UtilFunction().handleDioError(exception));
    } catch (e) {
      Logger.data("Exception is: $e");
      String? error = e.toString();
      return Left(ErrorData.httpUnknownError(error));
    }
  }

}