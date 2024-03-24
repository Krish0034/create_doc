import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  BaseResponse({
    this.message,
    this.error,
    this.data,
  });

  String? message;
  String? error;
  List<Map<String,dynamic>>? data;

  factory BaseResponse.fromJson(dynamic json) => _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
