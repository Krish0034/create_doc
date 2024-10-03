
import 'package:dartz/dartz.dart';
import '../../../core/error_data.dart';
import '../../../util/auth_type.dart';
import '../../model/user_data.dart';

abstract class SingInServices
{
  Future<Either<ErrorData, UserData>> userLogin({required String userEmail,required String password, required AuthType authType});
}
