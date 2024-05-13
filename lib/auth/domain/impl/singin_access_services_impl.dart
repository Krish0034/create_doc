import 'package:create_doc/auth/model/user_data.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../data/services/signin_services.dart';
import '../signin_access_services.dart';


@Injectable(as: SingInAccessServices)
class SingInAccessServicesImpl extends SingInAccessServices
{
  final SingInServices _signInServices;

  SingInAccessServicesImpl(this._signInServices);
  @override
  Future<Either<ErrorData, UserData>> userLogin({required String userEmail, required String password, required AuthType authType}) async
  {
    return await _signInServices.userLogin(userEmail: userEmail, password: password, authType: authType);
  }

}