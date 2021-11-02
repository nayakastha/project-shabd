import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/homeview/homecontroller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getLoc();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [kBlueBgColor, kSecondaryColor]),
          ),
          child: Text(controller.locationMsg)),
    );
  }
}
