import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData
{
  String? fullName;
  String? username;
  String? authType;
  String? password;
  String? email;
  String? phone;
  String? image;
  int? createdDate;
  String? createdBy;
  String? fcm;
  bool? status;
  int? updatedDate;
  String? updatedBy;
  int? usageReminderDate;
  String? uid;
  String? instagram;
  AddressModel? userAddress;

  UserData({
    this.fullName,
    this.username,
    this.authType,
    this.email,
    this.phone,
    this.image,
    this.password,
    this.createdDate,
    this.createdBy,
    this.fcm,
    this.status,
    this.updatedDate,
    this.updatedBy,
    this.usageReminderDate,
    this.uid,
    this.instagram,
    this.userAddress,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}