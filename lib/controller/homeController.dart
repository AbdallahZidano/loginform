import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/views/login.dart';
import 'package:screen_util_app/widgets/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  String lang = 'en';
  checkLogin() async {
    var prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    return isLogin;
  }

  List locale = [
    {'name': 'ENGLISH', 'code': 'en', 'locale': Locale('en', 'US')},
    {'name': 'Arabic', 'code': 'ar', 'locale': Locale('ar', 'EG')},
  ];

  saveLang(var index) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale[index]['code'].toString());
    Get.updateLocale(locale[index]['locale']);
    Get.back();
  }

  Future getLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    lang = prefs.getString('locale') ?? "en";
    return lang;
  }

  logout() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', false);
    Get.offAll(LoginPage());
    showToast('Done logout suuessflully', HelpColors.green);
  }
}
