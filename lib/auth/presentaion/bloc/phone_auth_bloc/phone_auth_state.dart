part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {

  factory PhoneAuthState({
    ErrorData? errorData,
    required Option<CodeModelResponse> codeModelResponse,
  }) = _PhoneAuthState;

  factory PhoneAuthState.initial() => PhoneAuthState(codeModelResponse: none());
}
