import '../../../util/auth_type.dart';
import '../../model/code_model_response.dart';

abstract class SendOtpRepository
{
  Future<CodeModelResponse> sendOtp({required String phoneNumberWithCode, required AuthType authType});
}