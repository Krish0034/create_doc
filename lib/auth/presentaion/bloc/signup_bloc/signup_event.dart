part of 'signup_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent
{
  const factory SignUpEvent.createUser({required UserData userData, required AuthType authType}) =
  CreateUser;
}
