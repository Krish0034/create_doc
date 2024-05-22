part of 'get_user_data_bloc.dart';

@freezed
class GetUserDataEvent with _$GetUserDataEvent
{

  const factory GetUserDataEvent.getUserDataByPhone({required String phoneNumber, required AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel}) =
  GetUserDataByPhone;
}
