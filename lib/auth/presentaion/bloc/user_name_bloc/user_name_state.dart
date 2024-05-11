part of 'user_name_bloc.dart';

@freezed
class UserNameState with _$UserNameState
{
  factory UserNameState({
    @Default(false) bool userName,
    required Option<UserData> userData,
  }) = _UserNameState;

  factory UserNameState.initial() =>
      UserNameState(userData: none());
}