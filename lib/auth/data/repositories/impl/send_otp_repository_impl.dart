import 'package:create_doc/auth/model/code_model_response.dart';

import 'package:create_doc/util/auth_type.dart';
import 'package:injectable/injectable.dart';

import '../send_otp_repository.dart';
@Injectable(as: SendOtpRepository)
class SendOtpRepositoryImpl extends SendOtpRepository
{
  @override
  Future<CodeModelResponse> sendOtp({required String phoneNumberWithCode, required AuthType authType}) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

}