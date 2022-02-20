import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/preferences_model_sample.dart';

class Preferences{
  /// Name
  static void storeName(String name) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  static Future<String?> loadName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }

  static Future<bool> removeName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('name');
  }
  /// Users Objec
  static void storeUser(Users user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userData = jsonEncode(user); /// Convert Object to String
    prefs.setString('name', userData);
  }

  static Future<Users?> loadUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString('user');
    if(userData == null || userData.isEmpty) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(userData);
    return Users.fromJson(map); /// Convert map to Object
  }

  static Future<bool> removeUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('user');
  }
}