
import 'package:create_doc/auth/model/user_data.dart';
import '../../../util/auth_type.dart';

abstract class UserNameRepository
{
  Future<UserData> userExist({required String userName, required AuthType authType});
}