part of 'google_map_bloc.dart';


@freezed
class GoogleMapState with _$GoogleMapState
{
  factory GoogleMapState({
    required Option<List<AddressModel>> addressList,
    required Option<UserData> userData,
    ErrorData? errorData,
  }) = _GoogleMapState;

  factory GoogleMapState.initial() =>
      GoogleMapState(addressList: none(), userData: none());
}
