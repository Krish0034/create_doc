import 'dart:async';

import '../../repositories/send_otp_repository.dart';
import 'package:dio/dio.dart';
import '../../../model/code_model_response.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../util/logger.dart';
import '../../../../util/utility_function.dart';
import '../send_otp_services.dart';

@Injectable(as: SendOtpServices)
class SendOtpServicesImpl extends SendOtpServices
{
  final SendOtpRepository _sendOtpRepository;
  SendOtpServicesImpl(this._sendOtpRepository);

  @override
  Future<Either<ErrorData, CodeModelResponse>> sendOtp({required String phoneNumberWithCode, required AuthType authType}) async {
    try {
      final Completer<CodeModelResponse> completer = Completer<CodeModelResponse>();
      String? verificationFailed;

      await _sendOtpRepository.sendOtp(
        phoneNumberWithCode: phoneNumberWithCode,
        authType: authType,
        codeSent: (verificationId, resendToken) {
          Logger.data("Verification Id is $verificationId");
          Logger.data("Resend Token is $resendToken");
          final codeModelResponse = CodeModelResponse(
            verificationId: verificationId,
            resendToken: resendToken,
          );
          completer.complete(codeModelResponse);
        },
        verificationFailed: (e) {
          verificationFailed = e.toString();
          Logger.data("Verification Failed is $verificationFailed");
          completer.completeError(e);
        },
        phoneAuthCredential: (credential) {},
      );

      Logger.data("Waiting for verification to complete...");

      final codeModelResponse = await completer.future;

      Logger.data("Verification completed. Code Model Response: ${codeModelResponse.toJson()}");

      if (codeModelResponse.verificationId!.isEmpty) {
        return Left(ErrorData.httpUnknownError(verificationFailed ?? ''));
      } else {
        return Right(codeModelResponse);
      }
    } on FirebaseAuthException catch (e) {
      return Left(ErrorData.httpUnknownError("$e"));
    } on DioError catch (exception) {
      Logger.data("DioError Exception is: $exception");
      return Left(UtilFunction().handleDioError(exception));
    } catch (e) {
      Logger.data("Exception is: $e");
      final String error = e.toString();
      return Left(ErrorData.httpUnknownError(error));
    }
  }

}
