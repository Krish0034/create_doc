import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../auth/model/user_data.dart';

class PreferencesShared
{
  static late SharedPreferences _preferences;
  static SharedPreferences get preferences => _preferences;

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static const _onBoardingPass = 'onBoardingPass';
  static const _accessToken = 'accessToken';
  static const _refreshToken = 'refreshToken';
  static const _userEmail = 'email';
  static const _uuid = 'uuid';
  static const _signupRoute = 'signupRoute';
  static const _connectivity = 'connectivity';
  static const _iosToken = 'iosToken';
  static const _deviceToken = 'deviceToken';
  static const _userData = 'userData';
  static const _userEmailVerify = 'userEmailVerify';


  /// set data
  static Future setAccessToken({required String? accessToken}) async {
    await _preferences.setString(_accessToken, accessToken ?? "");
  }

  static Future setRefreshToken({required String? refreshToken}) async{
    await _preferences.setString(_refreshToken, refreshToken??"");
  }
  static Future setUserEmail({required String? userEmail}) async{
    await _preferences.setString(_userEmail, userEmail??'');
  }
 static Future setUuid({required String? uuid}) async{
    await _preferences.setString(_uuid, uuid??'');
  }
  static Future setDeviceToken({required String? deviceToken}) async{
    await _preferences.setString(_deviceToken, deviceToken??'');
  }
  static Future setSignUpRoute({required String? signupRoute}) async{
    await _preferences.setString(_signupRoute, signupRoute??'');
  }
  static Future setIosToken({required String? iosToken}) async{
    await _preferences.setString(_iosToken, iosToken??'');
  }
  static Future setConnection({required bool? connectivity}) async{
    await _preferences.setBool(_connectivity, connectivity??false);
  }
  static Future setOnBoardingPass({required bool? onBoardingPass}) async{
    await _preferences.setBool(_onBoardingPass, onBoardingPass??false);
  }
  static Future setUserEmailVerify({required bool? userEmailVerify}) async{
    await _preferences.setBool(_userEmailVerify, userEmailVerify??false);
  }
  static Future<void> setUserData({required UserData? userData}) async {
    if (userData != null) {
      final jsonString = json.encode(userData.toJson());
      await _preferences.setString(_userData, jsonString);
    }
  }


  /// get data

  static String get getAccessToken => _preferences.getString(_accessToken) ?? "";
  static String get refreshToken => _preferences.getString(_refreshToken) ?? "";
  static String get email => _preferences.getString(_userEmail) ?? "";
  static String get uuid => _preferences.getString(_uuid) ?? "";
  static String get signupRoute => _preferences.getString(_signupRoute) ?? "";
  static String get iosToken => _preferences.getString(_iosToken) ?? "";
  static String get deviceToken => _preferences.getString(_deviceToken) ?? "";
  static bool get getConnection => _preferences.getBool(_connectivity) ?? false;
  static bool get getOnBoardingPass=> _preferences.getBool(_onBoardingPass) ?? false;
  static bool get getUserEmailVerify=> _preferences.getBool(_userEmailVerify) ?? false;
  static UserData? getUserData() {
    final jsonString = _preferences.getString(_userData);
    if (jsonString != null && jsonString.isNotEmpty) {
      return UserData.fromJson(jsonString as Map<String,dynamic>);
    }
    return null;
  }


  /// Remove data
  static Future<bool> clearAllData() async
  {
    return await _preferences.clear().then((value) => true);
  }

}