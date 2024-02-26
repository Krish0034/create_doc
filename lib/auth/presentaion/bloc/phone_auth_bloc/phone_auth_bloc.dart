import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import '../../../domain/send_otp_access_services.dart';
import '../../../model/code_model_response.dart';
import '../../../model/user_data.dart';

part 'phone_auth_event.dart';
part 'phone_auth_state.dart';
part 'phone_auth_bloc.freezed.dart';


@injectable
class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {

  final SendOtpAccessServices _sendOtpAccessServices;

  PhoneAuthBloc(this._sendOtpAccessServices) : super(PhoneAuthState.initial()) {
    on<PhoneAuthEvent>((PhoneAuthEvent event,Emitter<PhoneAuthState> emit) async {
      await event.when(
          sendOtp: (String phoneNumberWithCode, AuthType authType) => sendOtp(emit, phoneNumberWithCode, authType),
          createUser: (UserData userData, AuthType authType) {  }
      );
    });
  }
Future<dynamic> sendOtp(Emitter<PhoneAuthState> emit, String phoneNumberWithCode, AuthType authType)
  async {
    Logger.data("Send Otp number is $phoneNumberWithCode");
    Logger.data("Create User Function in bloc 1 $authType");
    final Either<ErrorData, CodeModelResponse> result = await _sendOtpAccessServices.sendOtp(phoneNumberWithCode: phoneNumberWithCode, authType: authType);
    Logger.data("Result of user result is: $result");
    emit(
      result.fold(
            (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none(),codeModelResponse:none()),
            (CodeModelResponse codeModelResponse) => state.copyWith(codeModelResponse: optionOf(codeModelResponse),userData: none()),
      ),
    );
  }

  Future<dynamic> createUser(Emitter<PhoneAuthState> emit, UserData userData, AuthType authType)
  async {
    Logger.data("Create User Function in bloc ${userData.toJson()}");
    Logger.data("Create User Function in bloc 1 $authType");
    // final Either<ErrorData, UserData> result = await _sendOtpAccessServices.createUser(userData: userData, authType: authType);
    // Logger.data("Result of user result is: $result");
    // emit(
    //   result.fold(
    //         (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
    //         (UserData userData) => state.copyWith(userData: optionOf(userData)),
    //   ),
    // );
  }
}
