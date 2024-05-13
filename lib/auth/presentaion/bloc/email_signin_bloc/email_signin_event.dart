part of 'email_signin_bloc.dart';

@freezed
class EmailSignInEvent with _$EmailSignInEvent
{
  const factory EmailSignInEvent.userLogin({required String userEmail, required String password, required AuthType authType})
  = UserLogin;
}
