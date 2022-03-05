import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/widgets/drawer.dart';
import 'package:screen_util_app/widgets/languageDialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
        centerTitle: true,
        backgroundColor: HelpColors.buttonColor,
      ),
      drawer: buildDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr, style: TextStyle(fontSize: 14)),
            SizedBox(height: 10),
            Text('message'.tr, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => buildLanguageDialog(context),
              child: Text('changelang'.tr),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HelpColors.buttonColor)),
            ),
          ],
        ),
      ),
    );
  }
}
