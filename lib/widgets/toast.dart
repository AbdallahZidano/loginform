import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

showToast(String message, Color baColor) {
  Get.showSnackbar(
    GetSnackBar(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 45.h),
      messageText: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 15.sp, color: Colors.white),
        ),
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: baColor,
      borderRadius: 40.0.sp,
      forwardAnimationCurve: Curves.easeInOutBack,
      reverseAnimationCurve: Curves.easeInOutBack,
      animationDuration: Duration(milliseconds: 850),
      isDismissible: false,
    ),
  );
}
