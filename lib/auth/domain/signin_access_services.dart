
import 'package:create_doc/auth/model/user_data.dart';
import 'package:dartz/dartz.dart';
import '../../core/error_data.dart';
import '../../util/auth_type.dart';

abstract class SingInAccessServices
{
  Future<Either<ErrorData, UserData>> userLogin({required String userEmail,required String password, required AuthType authType});
}