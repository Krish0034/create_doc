import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../../../util/api_urls.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import '../../../model/user_data.dart';
import '../signup_repository.dart';

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl extends SignUpRepository {
  SignUpRepositoryImpl();

  final FireBaseStorage _fireBaseStorage = FireBaseStorage();

  @override
  Future<UserData> createUser(
      {required UserData userData, required AuthType authType}) async {
    Logger.data("Create User Function in repository ${userData.toJson()}");
    Logger.data("Create User Function in repository 1 $authType");
    try {
      late UserData userResponseData;
      await _fireBaseStorage.usersCollectionReference
          .doc(userData.uid)
          .set(userData.toJson(), SetOptions(merge: true))
          .then((value) async {})
          .onError((error, stackTrace) {
        Logger.data("Exception response error on error is: $error  and $stackTrace");
      });
      await _fireBaseStorage.usersCollectionReference
          .doc(userData.uid)
          .get()
          .then((value) {
        if (value.data() != null) {
          userResponseData = UserData.fromJson(value.data() as Map<String, dynamic>);
        } else {
          Logger.data("Get Response Data is: ${value.data()}");
        }
      });
      Logger.data("Get Response Data is 2: ${userResponseData.toJson()}");
      return userResponseData;
    } catch (e) {
      Logger.data("Exception response is: $e");
    }
    Logger.data("Final Return User Data is : ${userData.toJson()}");
    return userData;
  }
}
