import 'package:create_doc/auth/data/repositories/user_name_repository.dart';
import 'package:create_doc/auth/data/services/user_name_services.dart';
import 'package:create_doc/util/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../model/user_data.dart';



@Injectable(as: UserNameServices)
class UserNameServicesImpl extends UserNameServices {
  UserNameServicesImpl(this._userNameRepository);

  final UserNameRepository _userNameRepository;

  @override
  Future<Either<ErrorData, UserData>> userExist({required String userName, required AuthType authType}) async
  {
    Logger.data("user services is: $userName");
    try {
      UserData userData = await _userNameRepository.userExist(userName: userName, authType: authType);
      if (userData.username != null) {
        Logger.data("user name is found in services method ${userData.toJson()}");
        return right(userData);
      } else {
        Logger.data("user name is found not in services method ${userData.toJson()}");
        return left(const ErrorData.httpUnknownError("User Not Found"));
      }
    } catch (e) {
      return left(ErrorData.httpUnknownError("Error: $e"));
    }
  }

}
