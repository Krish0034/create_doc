part of 'email_signup_bloc.dart';

@freezed
class EmailSignUpState with _$EmailSignUpState
{
  factory EmailSignUpState({
    required Option<UserData> userData,
    ErrorData? errorData,
  }) = _SignUpState;

  factory EmailSignUpState.initial() =>
      EmailSignUpState(userData: none());

}


