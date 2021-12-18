import 'package:shabd/services/authservice.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/utils/ui_scaling.dart';
import 'package:shabd/views/home/homecontroller.dart';
import 'package:shabd/views/overalls/error404.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final AuthService _authService = Get.find();

  @override
  Widget build(BuildContext context) {
    final AnimationController animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColour,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('assets/animations/splash.json',
              controller: animationController,
              onLoaded: (LottieComposition composition) {
            animationController
                .addStatusListener((AnimationStatus status) async {
              final ConnectivityResult connectivityResult =
                  await Connectivity().checkConnectivity();
              if (connectivityResult == ConnectivityResult.none &&
                  status == AnimationStatus.completed) {
                await Get.to<dynamic>(
                  () => const ErrorPage(),
                );
              }
              if (connectivityResult != ConnectivityResult.none &&
                  status == AnimationStatus.completed) {
                await GetStorage().initStorage;
                await HomeController().getCurrentAddress();
                final Widget route = await _authService.handleAuth();
                await Get.off<dynamic>(
                  () => route,
                );
              }
            });
            animationController
              ..duration = composition.duration
              ..forward();
          }),
        ],
      )),
    );
  }
}
