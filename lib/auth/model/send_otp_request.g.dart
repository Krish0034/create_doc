// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpRequest _$SendOtpRequestFromJson(Map<String, dynamic> json) =>
    SendOtpRequest(
      type: json['type'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$SendOtpRequestToJson(SendOtpRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
    };