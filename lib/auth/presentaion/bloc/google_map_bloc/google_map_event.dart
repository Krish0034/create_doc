part of 'google_map_bloc.dart';

@freezed
class GoogleMapEvent with _$GoogleMapEvent
{
  const factory GoogleMapEvent.searchLocation({required String searchQuery}) = SearchLocation;
  const factory GoogleMapEvent.saveLocation({required AddressModel addressModel}) = SaveLocation;
}
