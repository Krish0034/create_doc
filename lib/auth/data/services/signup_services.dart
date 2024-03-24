import 'package:dartz/dartz.dart';
import '../../../util/auth_type.dart';
import '../../../core/error_data.dart';
import '../../model/phone_auth_provider_model.dart';
import '../../model/user_data.dart';

abstract class SignUpServices
{
  Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel});
}