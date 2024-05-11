part of 'signup_bloc.dart';

@freezed
class SignUpState with _$SignUpState
{
  factory SignUpState({
    required Option<UserData> userData,
    ErrorData? errorData,
  }) = _SignUpState;

  factory SignUpState.initial() =>
      SignUpState(userData: none());

}


