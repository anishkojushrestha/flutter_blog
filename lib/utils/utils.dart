import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/blog/presentation/router/router_import.gr.dart';

class Utils {
  static Future<void> saveToken(String token) async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

  static Future<String?> getToken() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("token").toString();
  }

  static Future<void> manipulateLogin(context) async {
    var token = await getToken();
    if (token != null) {
      AutoRouter.of(context).push(const GeneralRoute());
    } else {
      AutoRouter.of(context).push(const OnBoardRoute());
    }
  }

  static Future<void> ClearAllSaveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
