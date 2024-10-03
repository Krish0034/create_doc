part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {

  factory PhoneAuthState({
    required Option<CodeModelResponse> codeModelResponse, ErrorData? errorData,
  }) = _PhoneAuthState;

  factory PhoneAuthState.initial() => PhoneAuthState(codeModelResponse: none());
}
