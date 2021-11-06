import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/homeview/homecontroller.dart';

class HomeView extends GetView<HomeController> {

  HomeView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();


  @override
  Widget build(BuildContext context) {
    controller.getLoc();
    return Scaffold(

      key: _key,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: kTextColourBlue,
            ),
            onPressed: () {
              _key.currentState!.openDrawer();
            }),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings, color: kTextColourBlue),
              onPressed: () {}),
        ],

      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [kBlueBgColor, kSecondaryColor]),
          ),

          child: Center(child: Text(controller.locationMsg))),


    );
  }
}
