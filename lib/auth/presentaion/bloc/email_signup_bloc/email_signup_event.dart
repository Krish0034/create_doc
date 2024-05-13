part of 'email_signup_bloc.dart';

@freezed
class EmailSignUpEvent with _$EmailSignUpEvent
{
  const factory EmailSignUpEvent.createUser({required UserData userData, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) =
  CreateUser;
}
