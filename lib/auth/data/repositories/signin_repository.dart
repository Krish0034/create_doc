
import '../../../util/auth_type.dart';
import '../../model/user_data.dart';

abstract class SignInRepository
{
  Future<UserData?> getUserData({required String userId});

}