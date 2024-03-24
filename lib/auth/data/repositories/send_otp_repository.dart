import 'package:firebase_auth/firebase_auth.dart';
import '../../../util/auth_type.dart';


abstract class SendOtpRepository
{
  Future<void> sendOtp({
    required String phoneNumberWithCode,
    required AuthType authType,
    required Function codeSent,
    required Function verificationFailed,
    required Function(PhoneAuthCredential) phoneAuthCredential,
  });
}