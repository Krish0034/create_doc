import '../../core/error_data.dart';
import 'package:dartz/dartz.dart';
import '../../util/auth_type.dart';
import '../model/user_data.dart';

abstract class UserNameAccessServices
{
  Future<Either<ErrorData, UserData>> userExist({required String userName, required AuthType authType});
}
