
//class get_user_data_repository
import '../../model/user_data.dart';

abstract class GetUserDataRepository
{
  Future<UserData?> getUserDataByPhone({required String phoneNumber});
}