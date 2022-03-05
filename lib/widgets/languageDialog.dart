import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/controller/homeController.dart';

HomeController homeController = Get.put(HomeController());

buildLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (builder) {
      return AlertDialog(
        title: Text('Choose Your Language'.tr),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    child: Text(
                        homeController.locale[index]['name'].toString().tr),
                    onTap: () {
                      homeController.saveLang(index);
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, '/', (_) => false);
                    }),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.blue,
              );
            },
            itemCount: homeController.locale.length,
          ),
        ),
      );
    },
  );
}
