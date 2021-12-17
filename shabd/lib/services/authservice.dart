import 'package:shabd/views/home/homescreen.dart';
import 'package:shabd/views/login/logincontroller.dart';
import 'package:shabd/views/login/loginscreen.dart';
import 'package:shabd/views/overalls/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shabd/widgets/snackbar.dart';

class AuthService extends GetxController {
  Future<Widget> handleAuth() async {
    if (FirebaseAuth.instance.currentUser != null) {
      return const HomeView();
    } else {
      return const LoginView();
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
    GetStorage('User').erase();
    LoginController().codeSent.value = false;
    Get.offAll<SplashScreen>(() => const SplashScreen());
  }

  Future<void> signInwithOTP(String smsCode, String verId) async {
    try {
      final AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verId,
        smsCode: smsCode,
      );
      await FirebaseAuth.instance.signInWithCredential(authCredential);
      await Get.offAll<SplashScreen>(() => const SplashScreen());
    } catch (error) {
      debugPrint(error.toString());
      CustomLoaders().customSnackBar(
        'Authentication Error - WRONG OTP',
        'Please enter the correct OTP sent to your mobile number',
      );
    }
  }

  String? getCurrentUserPhone() {
    return FirebaseAuth.instance.currentUser != null
        ? FirebaseAuth.instance.currentUser?.phoneNumber
        : '';
  }
}
