part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {

  factory PhoneAuthState({
    Option<UserData>? userData,
    ErrorData? errorData,
    Option<CodeModelResponse>? codeModelResponse,
  }) = _PhoneAuthState;

  factory PhoneAuthState.initial() => PhoneAuthState(userData: none(),codeModelResponse: none());
}
