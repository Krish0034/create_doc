import 'package:create_doc/auth/data/services/user_name_services.dart';
import 'package:create_doc/auth/domain/user_name_access_services.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error_data.dart';
import '../../../util/auth_type.dart';
import '../../../util/logger.dart';
import '../../model/user_data.dart';


@Injectable(as: UserNameAccessServices)
class UserNameAccessServicesImpl extends UserNameAccessServices
{

  UserNameAccessServicesImpl(this._userNameServices);
  final UserNameServices _userNameServices;

  @override
  Future<Either<ErrorData, UserData>> userExist({required String userName, required AuthType authType}) async{
    Logger.data("user name access services");
    return await _userNameServices.userExist(userName: userName, authType: authType);
  }

}