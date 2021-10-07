import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/splashview/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'INDyPRESS',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      enableLog: true,
      defaultTransition: Transition.rightToLeftWithFade,
      popGesture: Get.isPopGestureEnable,
      home: const SplashView(),
    );
  }
}
