
import 'package:create_doc/auth/model/user_data.dart';
import 'package:injectable/injectable.dart';

import '../../../../util/api_urls.dart';
import '../../../../util/logger.dart';
import '../get_user_data_repository.dart';

@Injectable(as: GetUserDataRepository)
class GetUserDataRepositoryImpl extends GetUserDataRepository
{
  GetUserDataRepositoryImpl();
  final FireBaseStorage _fireBaseStorage = FireBaseStorage();
  @override
  Future<UserData?> getUserDataByPhone({required String phoneNumber}) async {
    late UserData userResponseData;
    try{
      final userData=await _fireBaseStorage.usersCollectionReference.where('phone',isEqualTo: phoneNumber).get();
      if(userData.docs.isNotEmpty)
      {
        // Logger.data("userData exist ${userData.docs.data()}");
        // userResponseData=UserData.fromJson(userData.data() as Map<String,dynamic>);
        // Logger.data("userData exist ${userResponseData.toJson()}");
      }
      else
      {
        Logger.data("userData not exist ");
        userResponseData=UserData();
      }
      return userResponseData;

    }catch (e) {
      Logger.data("Exception response is: $e");
      return null;
    }

  }

}