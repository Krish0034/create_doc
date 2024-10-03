import '../user_name_repository.dart';
import '../../../../util/logger.dart';
import 'package:injectable/injectable.dart';
import '../../../../util/api_urls.dart';
import '../../../../util/auth_type.dart';
import '../../../model/user_data.dart';

@Injectable(as: UserNameRepository)
class UserNameRepositoryImpl extends UserNameRepository {
  UserNameRepositoryImpl();

  final FireBaseStorage _fireBaseStorage = FireBaseStorage();

  @override
  Future<UserData> userExist({required String userName, required AuthType authType}) async {
    final existUser = await _fireBaseStorage.usersCollectionReference
        .where("username", isEqualTo: userName)
        .get();

    for (final docSnapshot in existUser.docs) {
      final UserData userData = UserData.fromJson(docSnapshot.data()! as Map<String, dynamic>);
      Logger.data("user data are exist or not: ${userData.toJson()}");
      if (userData.username.toString() == userName) {
        return userData;
      }
    }
    return UserData();
  }

}
