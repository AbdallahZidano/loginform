import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

buildTextField(String hint, TextEditingController controller) {
  return Container(
    // height: 60.h,
    width: 400.w,
    margin: EdgeInsets.symmetric(horizontal: 20.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 13.sp,
        ),
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
      ),
    ),
  );
}
