// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      cityName: json['cityName'] as String?,
      stateName: json['stateName'] as String?,
      countryName: json['countryName'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'stateName': instance.stateName,
      'countryName': instance.countryName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'url': instance.url,
    };
