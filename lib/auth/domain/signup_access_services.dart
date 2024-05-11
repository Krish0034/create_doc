import 'package:create_doc/core/error_data.dart';
import 'package:dartz/dartz.dart';


import '../../util/auth_type.dart';
import '../model/phone_auth_provider_model.dart';
import '../model/user_data.dart';

abstract class SignUpAccessServices
{
    Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel});
}