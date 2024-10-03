part of 'user_name_bloc.dart';

@freezed
class UserNameState with _$UserNameState
{
  factory UserNameState({
    required Option<UserData> userData, @Default(false) bool userName,
  }) = _UserNameState;

  factory UserNameState.initial() =>
      UserNameState(userData: none());
}
