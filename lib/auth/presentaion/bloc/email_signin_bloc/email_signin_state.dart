part of 'email_signin_bloc.dart';

@freezed
class EmailSignInState with _$EmailSignInState
{

  factory EmailSignInState({
    required Option<UserData> userData,
    ErrorData? errorData,})= _EmailSignInState;
  factory EmailSignInState.initial() =>
      EmailSignInState(userData: none());
}
