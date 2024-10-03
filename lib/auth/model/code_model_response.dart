
import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_model_response.g.dart';

@JsonSerializable()
class CodeModelResponse
{
  String? verificationId;
  int? resendToken;

  CodeModelResponse({this.verificationId, this.resendToken});

  factory CodeModelResponse.fromJson(Map<String, dynamic> json) =>
      _$CodeModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CodeModelResponseToJson(this);
}
