// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/controller/loginController.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/views/signup.dart';
import 'package:screen_util_app/widgets/textField.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginController loginController = Get.put(LoginController());
  // @override
  // void initState() {
  //   super.initState();
  //   loginController.checkLogin();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/top_image.png",
            height: 144.h,
            width: double.infinity,
            alignment: Alignment.topLeft,
          ),
          Text(
            "Welcome Onboard!".tr,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: HelpColors.textColor,
            ),
          ),
          Text(
            "Let's help you to meet your Task!".tr,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: HelpColors.textColor,
            ),
          ),
          SizedBox(height: 59.h),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              "assets/images/mobile.png",
              height: 186.h,
            ),
          ),
          SizedBox(height: 35.h),
          buildTextField("Username".tr, emailController),
          SizedBox(height: 17.h),
          buildTextField("Password".tr, passwordController),
          SizedBox(height: 29.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.h),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HelpColors.buttonColor),
                ),
                onPressed: () => loginController.login(
                    emailController.text, passwordController.text, context),
                child: Text('Login'.tr),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont't have Account ? ".tr,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: HelpColors.textColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(SignupPage());
                },
                child: Text(
                  "Sign Up".tr,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: HelpColors.buttonColor,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
