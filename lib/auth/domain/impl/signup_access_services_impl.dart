import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error_data.dart';
import '../../../util/auth_type.dart';
import '../../../util/logger.dart';
import '../../data/services/signup_services.dart';
import '../../model/phone_auth_provider_model.dart';
import '../../model/user_data.dart';
import '../signup_access_services.dart';

@Injectable(as: SignUpAccessServices)
class SignUpAccessServicesImpl extends SignUpAccessServices
{
  final SignUpServices _signUpServices;

  SignUpAccessServicesImpl(this._signUpServices);



  @override
  Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) async {
    Logger.data("Create User Function in Access service ${userData.toJson()}");
    Logger.data("Create User Function in Access service 1 $authType");
    return await _signUpServices.createUser(userData: userData, authType: authType,phoneAuthProviderModel: phoneAuthProviderModel);
  }


}