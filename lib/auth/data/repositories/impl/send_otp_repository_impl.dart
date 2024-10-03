
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../send_otp_repository.dart';

@Injectable(as: SendOtpRepository)
class SendOtpRepositoryImpl extends SendOtpRepository {
  SendOtpRepositoryImpl();

  final _authInstance = FirebaseAuth.instance;

  @override
  Future<void> sendOtp({
    required String phoneNumberWithCode,
    required AuthType authType,
    required Function codeSent,
    required Function verificationFailed,
    required Function(PhoneAuthCredential) phoneAuthCredential,
  }) async {
    try {
      await _authInstance.verifyPhoneNumber(
        phoneNumber: phoneNumberWithCode,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) {
          phoneAuthCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          verificationFailed(e);
        },
        codeSent: (String verificationId, int? resendToken) {
          codeSent(verificationId, resendToken);
        },
        codeAutoRetrievalTimeout: (String? id) {},
      );
    } catch (e) {
      Logger.data('Error occurred during OTP sending: $e');
    }
  }

}
