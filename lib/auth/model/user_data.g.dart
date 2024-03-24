// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      fullName: json['fullName'] as String?,
      username: json['username'] as String?,
      authType: json['authType'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      password: json['password'] as String?,
      createdDate: json['createdDate'] as int?,
      createdBy: json['createdBy'] as String?,
      fcm: json['fcm'] as String?,
      status: json['status'] as bool?,
      updatedDate: json['updatedDate'] as int?,
      updatedBy: json['updatedBy'] as String?,
      usageReminderDate: json['usageReminderDate'] as int?,
      uid: json['uid'] as String?,
      instagram: json['instagram'] as String?,
      userAddress: json['userAddress'] == null
          ? null
          : AddressModel.fromJson(json['userAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'username': instance.username,
      'authType': instance.authType,
      'password': instance.password,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'fcm': instance.fcm,
      'status': instance.status,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
      'usageReminderDate': instance.usageReminderDate,
      'uid': instance.uid,
      'instagram': instance.instagram,
      'userAddress': instance.userAddress,
    };
