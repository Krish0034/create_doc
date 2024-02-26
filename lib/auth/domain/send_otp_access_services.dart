
import 'package:dartz/dartz.dart';

import '../../core/error_data.dart';
import '../../util/auth_type.dart';
import '../model/code_model_response.dart';


abstract class SendOtpAccessServices
{
  Future<Either<ErrorData, CodeModelResponse>> sendOtp({required String phoneNumberWithCode, required AuthType authType});

}