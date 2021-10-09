import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/theme.dart';

class CustomLoaders {
  Widget customSnackBar(String title, String subject, {Duration? duration}) {
    Get.snackbar<Widget>(
      title,
      subject,
      backgroundColor: kSnackColour.withOpacity(0.5),
      snackStyle: SnackStyle.FLOATING,
      duration: duration,
      colorText: Colors.black87,
    );
    return Container();
  }
}
