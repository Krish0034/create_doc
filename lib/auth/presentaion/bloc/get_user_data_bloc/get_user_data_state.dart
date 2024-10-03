part of 'get_user_data_bloc.dart';

@freezed
class GetUserDataState with _$GetUserDataState
{
  factory GetUserDataState({
  required Option<UserData> userData,
  ErrorData? errorData,
  }) = _GetUserDataState;

  factory GetUserDataState.initial() =>
      GetUserDataState(userData: none());
}
