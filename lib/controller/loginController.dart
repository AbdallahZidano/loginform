import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/views/home.dart';
import 'package:screen_util_app/widgets/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  login(String name, String password, BuildContext context) async {
    var prefs = await SharedPreferences.getInstance();
    var currntname = 'Zidano';
    var currntPassword = '12345';
    if (name == '' || password == '') {
      showToast('Please Enter your username and password', HelpColors.red);
    } else {
      if (name == currntname && password == currntPassword) {
        await prefs.setBool('isLogin', true);
        Get.off(HomePage());
        showToast('Login Successfully', HelpColors.green);
      } else {
        showToast('Please check your username and password', HelpColors.red);
      }
    }
  }
}
