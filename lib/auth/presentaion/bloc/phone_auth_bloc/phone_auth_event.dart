part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthEvent with _$PhoneAuthEvent
{
  const factory PhoneAuthEvent.sendOtp({required String phoneNumberWithCode, required AuthType authType}) = SendOtp;
}
