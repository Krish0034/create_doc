part of 'user_name_bloc.dart';

@freezed
class UserNameEvent with _$UserNameEvent
{
  const factory UserNameEvent.userExist({required String userName, required AuthType authType}) =
  UserExist;
}
