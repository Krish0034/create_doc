// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeModelResponse _$CodeModelResponseFromJson(Map<String, dynamic> json) =>
    CodeModelResponse(
      verificationId: json['verificationId'] as String?,
      resendToken: json['resendToken'] as int?,
    );

Map<String, dynamic> _$CodeModelResponseToJson(CodeModelResponse instance) =>
    <String, dynamic>{
      'verificationId': instance.verificationId,
      'resendToken': instance.resendToken,
    };
