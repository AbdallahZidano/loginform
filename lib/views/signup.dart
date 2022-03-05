// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/controller/signupController.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/widgets/textField.dart';

class SignupPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();
  SignupController signupController = Get.put(SignupController());

  FocusNode emailFocus = FocusNode();
  FocusNode phoneFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  FocusNode conPassFocus = FocusNode();

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
          SizedBox(height: 40.h),
          Text(
            "Sign Up".tr,
            style: TextStyle(fontSize: 23.sp),
          ),
          SizedBox(height: 35.h),
          buildTextField("Name".tr, emailController),
          SizedBox(height: 17.h),
          buildTextField("Phone number".tr, phoneController),
          SizedBox(height: 17.h),
          buildTextField("Password".tr, passwordController),
          SizedBox(height: 17.h),
          buildTextField("Confirm Password".tr, conPasswordController),
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
                onPressed: () => signupController.signup(
                    emailController.text,
                    phoneController.text,
                    passwordController.text,
                    conPasswordController.text),
                child: Text('Sign Up'.tr),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You have Account ?".tr,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: HelpColors.textColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Login".tr,
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
