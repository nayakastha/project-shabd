import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shabd/utils/scaling.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/authview/loginview.dart';
import 'package:shabd/views/staticview/error404.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final AnimationController animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueBgColor,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [kBlueBgColor, kSecondaryColor]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset('assets/animations/newspaper.json',
                controller: animationController,
                onLoaded: (LottieComposition composition) {
              animationController
                  .addStatusListener((AnimationStatus status) async {
                final ConnectivityResult connectivityResult =
                    await Connectivity().checkConnectivity();
                if (connectivityResult == ConnectivityResult.none &&
                    status == AnimationStatus.completed) {}
                if (connectivityResult != ConnectivityResult.none &&
                    status == AnimationStatus.completed) {
                  await Get.to<dynamic>(
                    () => const LoginView(),
                  );
                }
              });
              animationController
                ..duration = composition.duration
                ..forward();
            }),
          ],
        ),
      ),
    );
  }
}
