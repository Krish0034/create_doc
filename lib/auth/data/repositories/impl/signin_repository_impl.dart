
import '../../../model/user_data.dart';
import 'package:injectable/injectable.dart';

import '../../../../util/api_urls.dart';
import '../../../../util/logger.dart';
import '../signin_repository.dart';

@Injectable(as: SignInRepository)
class SignInRepositoryImpl extends SignInRepository
{
  SignInRepositoryImpl();

  final FireBaseStorage _fireBaseStorage = FireBaseStorage();

  @override
  Future<UserData?> getUserData({required String userId}) async{
    late UserData userResponseData;
    try{
      final userData=await _fireBaseStorage.usersCollectionReference.doc(userId).get();
      if(userData.exists)
      {
        Logger.data("userData exist ${userData.data()}");
        userResponseData=UserData.fromJson(userData.data()! as Map<String,dynamic>);
        Logger.data("userData exist ${userResponseData.toJson()}");
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
