import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/home/homcontroller.dart';
import 'package:shabd/views/home/widgets/newtilelist.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColour,
        title: Text(
          'SHABD',
          style: Theme.of(context).textTheme.headline6,
        ),
        elevation: 4,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_rounded,
            ),
          )
        ],
      ),
      body: Column(
        children: const [
          NewsTileList(),
        ],
      ),
    );
  }
}
