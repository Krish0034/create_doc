import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel
{
  String? cityName;
  String? stateName;
  String? countryName;
  double? latitude;
  double? longitude;
  String? url;


  AddressModel({this.cityName,
      this.stateName,
      this.countryName,
      this.latitude,
      this.longitude,
      this.url});

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

}