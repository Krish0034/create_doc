
import 'package:create_doc/auth/data/services/send_otp_services.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../util/auth_type.dart';
import '../../model/code_model_response.dart';
import '../send_otp_access_services.dart';


@Injectable(as: SendOtpAccessServices)
class SendOtpAccessServicesImpl extends SendOtpAccessServices
{
  final SendOtpServices _sendOtpServices;
  SendOtpAccessServicesImpl(this._sendOtpServices);

  @override
  Future<Either<ErrorData, CodeModelResponse>> sendOtp({required String phoneNumberWithCode, required AuthType authType}) async
  {
    return await _sendOtpServices.sendOtp(phoneNumberWithCode: phoneNumberWithCode, authType: authType);
  }

}