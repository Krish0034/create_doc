import 'package:dartz/dartz.dart';

import '../../core/error_data.dart';
import '../../util/auth_type.dart';
import '../model/phone_auth_provider_model.dart';
import '../model/user_data.dart';

abstract class GetUserDataAccessServices
{
  Future<Either<ErrorData, UserData>> getUserDataByPhone({required String phoneNumber, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel});
}
