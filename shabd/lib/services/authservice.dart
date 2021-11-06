import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shabd/views/authview/authcontroller.dart';
import 'package:shabd/views/authview/loginview.dart';
import 'package:shabd/views/authview/signupview.dart';
import 'package:shabd/views/homeview/homeview.dart';
import 'package:shabd/views/splashview/splashview.dart';

class AuthService extends GetxController {
  Future<Widget> handleAuth() async {
    if (FirebaseAuth.instance.currentUser == null &&
        FirebaseAuth.instance.currentUser!.metadata.creationTime ==
            FirebaseAuth.instance.currentUser!.metadata.lastSignInTime) {
      return const SignupView();
    } else if (FirebaseAuth.instance.currentUser == null &&
        FirebaseAuth.instance.currentUser!.metadata.creationTime !=
            FirebaseAuth.instance.currentUser!.metadata.lastSignInTime) {
      return const LoginView();
    } else {
      return HomeView();
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
    GetStorage('User').erase();
    AuthController().codeSent.value = false;
    Get.offAll<SplashView>(() => const SplashView());
  }

  Future<void> signInwithOTP(String smsCode, String verId) async {
    try {
      final AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verId,
        smsCode: smsCode,
      );
      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
