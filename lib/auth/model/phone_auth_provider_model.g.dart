// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_auth_provider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneAuthProviderModel _$PhoneAuthProviderModelFromJson(
        Map<String, dynamic> json) =>
    PhoneAuthProviderModel(
      codeModelResponse: json['codeModelResponse'] == null
          ? null
          : CodeModelResponse.fromJson(
              json['codeModelResponse'] as Map<String, dynamic>),
      otpCode: json['otpCode'] as String?,
    );

Map<String, dynamic> _$PhoneAuthProviderModelToJson(
        PhoneAuthProviderModel instance) =>
    <String, dynamic>{
      'codeModelResponse': instance.codeModelResponse,
      'otpCode': instance.otpCode,
    };
