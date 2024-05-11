import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_request.g.dart';

@JsonSerializable()
class SendOtpRequest {
  SendOtpRequest({
    this.type,
    this.phone,
    this.countryCode,
  });

  String? type;
  String? phone;
  String? countryCode;

  factory SendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$SendOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendOtpRequestToJson(this);
}
