import 'dart:convert';

import 'package:ai_measurement/presentation/sign_up_screen/sign_up_model/sign_up_response.dart';

import '../../../presentation/login_screen/login_model/login_response.dart';
import '../../utils/const_strings.dart';
import 'session_manager.dart';

class SessionHelper {
  SessionHelper._();

  static final SessionHelper _instance = SessionHelper._();

  factory SessionHelper() {
    return _instance;
  }

  // /// home seen
  // Future<void> sethomeseen(bool status) async {
  //   // save user values in shared pref
  //   await SessionManager.setBoolValue('AMS_home', status);
  // }
  //
  // Future<bool?> gethomeseenResponse() async {
  //   bool response = await SessionManager.getBoolValue('AMS_home');
  //   return response;
  // }
  //
  // /// home seen
  // Future<void> setIsAdmin(bool status) async {
  //   // save user values in shared pref
  //   await SessionManager.setBoolValue('AMS_isAdmin', status);
  // }
  //
  // Future<bool?> getIsAdmin() async {
  //   bool response = await SessionManager.getBoolValue('AMS_isAdmin');
  //   return response;
  // }
  //
  // Future<void> setLogin(bool login) async {
  //   // save user values in shared pref
  //   await SessionManager.setBoolValue('login', login);
  // }
  //
  // Future<bool?> getLogin() async {
  //   bool response = await SessionManager.getBoolValue('login');
  //   return response;
  // }
  //
  // Future<void> setIntro(int status) async {
  //   // save user values in shared pref
  //   await SessionManager.setIntValue(spIntro, status);
  // }
  //
  // Future<int?> getIntro() async {
  //   int response = await SessionManager.getIntValue(spIntro);
  //   return response;
  // }
  //
  /// token
  Future<void> setToken(String status) async {
    await SessionManager.setStringValue(spBaseToken, status);
  }

  Future<String?> getToken() async {
    String response = await SessionManager.getStringValue(spBaseToken);
    return response;
  }
  //
  // Future<void> setNotification(bool notification) async {
  //   // save user values in shared pref
  //   await SessionManager.setBoolValue("notification", notification);
  // }
  //
  // Future<bool?> getNotification() async {
  //   bool response = await SessionManager.getBoolValue("notification");
  //   return response;
  // }
  //
  // Future<void> setAddressBool(bool notification) async {
  //   // save user values in shared pref
  //   await SessionManager.setBoolValue("addressBool", notification);
  // }
  //
  // Future<bool?> getAddressBool() async {
  //   bool response = await SessionManager.getBoolValue("addressBool");
  //   return response;
  // }

  Future<void> setUserId(int userId) async {
    await SessionManager.setIntValue(spUserId, userId);
  }

  Future<int?> getUserId() async {
    return await SessionManager.getIntValue(spUserId);
  }

  Future<void> setProfileId(int profileId) async {
    await SessionManager.setIntValue(spProfileId, profileId);
  }

  Future<int?> getProfileId() async {
    return await SessionManager.getIntValue(spProfileId);
  }

  Future<void> setLoginResponse(LoginResponse response) async {
    // save user values in shared pref
    await SessionManager.setStringValue(
        spLoginResponse, json.encode(response.toJson()));
  }

  Future<LoginResponse?> getLoginResponse() async {
    String response = await SessionManager.getStringValue(spLoginResponse);
    return LoginResponse.fromJson(json.decode(response));
  }

  Future<SignUpResponse> getSignUpResponse() async {
    String response = await SessionManager.getStringValue(spSignUpResponse);
    return SignUpResponse.fromJson(json.decode(response));
  }

  Future<void> setSignUpResponse(SignUpResponse response) async {
    // save user values in shared pref
    await SessionManager.setStringValue(
        spSignUpResponse, json.encode(response.toJson()));
  }

  Future<void> setSelectedLanguage(String language) async {
    await SessionManager.setStringValue(spSelectedLanguage, language);
  }

  Future<String?> getSelectedLanguage() async {
    return await SessionManager.getStringValue(spSelectedLanguage);
  }
}
