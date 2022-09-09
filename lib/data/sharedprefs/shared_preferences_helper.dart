//This file contains the methods to save, remove, check data in sharedpreferences
//Created by Bikas Adhikari on 02-08-2022

import 'package:shared_preferences/shared_preferences.dart';
import 'package:teho_controller/data/sharedprefs/constants/preferences.dart';

class SharedPreferenceHelper {
  final SharedPreferences _sharedPreferences;

  SharedPreferenceHelper(this._sharedPreferences);

  //General Methods:
  Future<String?> get authToken async {
    return _sharedPreferences.getString(Preferences.auth_token);
  }

  Future<bool> saveAuthToken(String authToken) async {
    return _sharedPreferences.setString(Preferences.auth_token, authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreferences.remove(Preferences.auth_token);
  }

  //Login:
  Future<bool> get isLoggedIn async {
    return _sharedPreferences.getBool(Preferences.is_logged_in) ?? false;
  }

  Future<bool> saveIsLoggedIn(bool value) async {
    return _sharedPreferences.setBool(Preferences.is_logged_in, value);
  }
}
