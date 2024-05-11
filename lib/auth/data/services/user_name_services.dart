import 'package:dartz/dartz.dart';
import '../../../core/error_data.dart';
import '../../../util/auth_type.dart';
import '../../model/user_data.dart';
abstract class UserNameServices
{
  Future<Either<ErrorData, UserData>> userExist({required String userName, required AuthType authType});
}