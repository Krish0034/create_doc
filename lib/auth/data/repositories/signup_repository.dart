
import '../../../util/auth_type.dart';
import '../../model/user_data.dart';


abstract class SignUpRepository
{
  Future<UserData> createUser({required UserData userData, required AuthType authType});

}