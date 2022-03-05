import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:screen_util_app/controller/homeController.dart';
import 'package:screen_util_app/views/home.dart';
import 'package:screen_util_app/views/login.dart';
import 'localization/local.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    homeController.getLang().then((value) {
      Get.updateLocale(Locale(value ?? "en"));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: LocaleString(),
        locale: Locale(homeController.lang),
        title: 'Flutter Login Form',
        theme: ThemeData(
          fontFamily: 'Cairo',
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: homeController.checkLogin(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Scaffold(body: Center(child: CircularProgressIndicator()));
            } else {
              if (snapshot.data == true) {
                return HomePage();
              } else {
                return LoginPage();
              }
            }
          },
        ),
      ),
      designSize: Size(375, 812),
    );
  }
}
