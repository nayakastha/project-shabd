import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shabd/utils/scaling.dart';
import 'package:shabd/utils/theme.dart';

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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('assets/animations/newspaper.json',
              controller: animationController,
              onLoaded: (LottieComposition composition) {
            animationController
                .addStatusListener((AnimationStatus status) async {
              if (status == AnimationStatus.completed) {
                debugPrint('completed');
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
