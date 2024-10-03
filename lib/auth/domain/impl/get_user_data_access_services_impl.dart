
import '../../model/user_data.dart';
import '../../../core/error_data.dart';
import '../../../util/auth_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../data/services/get_user_data_services.dart';
import '../../model/phone_auth_provider_model.dart';
import '../get_user_data_access_services.dart';

@Injectable(as: GetUserDataAccessServices)
class GetUserDataAccessServicesImpl extends GetUserDataAccessServices
{
  final GetUserDataServices _getUserDataServices;
  GetUserDataAccessServicesImpl(this._getUserDataServices);

  @override
  Future<Either<ErrorData, UserData>> getUserDataByPhone({required String phoneNumber, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) async {
    return _getUserDataServices.getUserDataByPhone(phoneNumber: phoneNumber, authType: authType);
  }
  
}
