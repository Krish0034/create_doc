
import 'package:create_doc/auth/model/code_model_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_auth_provider_model.g.dart';

@JsonSerializable()
class PhoneAuthProviderModel
{
  CodeModelResponse? codeModelResponse;
  String? otpCode;

  PhoneAuthProviderModel({this.codeModelResponse, this.otpCode});
  factory PhoneAuthProviderModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneAuthProviderModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneAuthProviderModelToJson(this);
}