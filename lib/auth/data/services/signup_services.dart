import 'package:dartz/dartz.dart';
import '../../../baseResponse/base_response.dart';
import '../../../util/auth_type.dart';
import '../../../core/error_data.dart';
import '../../model/user_data.dart';

abstract class SignUpServices
{
  Future<Either<ErrorData, UserData>> createUser({required UserData userData, required AuthType authType});
}