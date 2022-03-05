import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/controller/homeController.dart';
import 'package:screen_util_app/helper/colors.dart';

HomeController homeController = Get.find();
Widget buildDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: -160,
            left: -180,
            child: Container(
              width: 500,
              height: 500,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                      radius: 250.0.w,
                      backgroundColor: HelpColors.buttonColor.withOpacity(0.2)),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: CircleAvatar(
                        radius: 180.0.w,
                        backgroundColor:
                            HelpColors.buttonColor.withOpacity(0.3)),
                  ),
                  Positioned(
                    top: 80,
                    left: 80,
                    child: CircleAvatar(
                        radius: 140.0.w,
                        backgroundColor:
                            HelpColors.buttonColor.withOpacity(0.4)),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/man.jpeg',
                        ),
                        radius: 50.w,
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Zidano",
                            style: TextStyle(
                              color: HelpColors.darkButtonColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.sp,
                            ),
                          ),
                          Text('Abdallah Mostafa')
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home_outlined,
                      color: Colors.grey[800], size: 25.w),
                  title: Text('Home'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person_outline,
                      color: Colors.grey[800], size: 25.w),
                  title: Text('Accuont'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.shopping_cart_outlined,
                      color: Colors.grey[800], size: 25.w),
                  title: Text('Card'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite_border_outlined,
                      color: Colors.grey[800], size: 25.w),
                  title: Text('Favorite'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.history_rounded,
                      color: Colors.grey[800], size: 25.w),
                  title: Text('Recent'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
                ListTile(
                  onTap: () => homeController.logout(),
                  leading:
                      Icon(Icons.logout, color: Colors.grey[800], size: 25.w),
                  title: Text('Logout'.tr),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10.w),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
