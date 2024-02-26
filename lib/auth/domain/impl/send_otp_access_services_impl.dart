
import 'package:create_doc/core/error_data.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../util/auth_type.dart';
import '../../model/code_model_response.dart';
import '../send_otp_access_services.dart';


@Injectable(as: SendOtpAccessServices)
class SendOtpAccessServicesImpl extends SendOtpAccessServices
{
  @override
  Future<Either<ErrorData, CodeModelResponse>> sendOtp({required String phoneNumberWithCode, required AuthType authType}) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

}