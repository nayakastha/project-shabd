import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/bindings.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/splashview/splashview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeBinding().dependencies();
  await Firebase.initializeApp();
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
