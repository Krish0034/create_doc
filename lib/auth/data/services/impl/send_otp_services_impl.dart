

import 'package:create_doc/auth/model/code_model_response.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../send_otp_services.dart';

@Injectable(as: SendOtpServices)
class SendOtpServicesImpl extends SendOtpServices
{
  @override
  Future<Either<ErrorData, CodeModelResponse>> sendOtp({required String phoneNumberWithCode, required AuthType authType}) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

}