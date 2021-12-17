import 'package:shabd/services/authservice.dart';
import 'package:shabd/views/overalls/splashscreen.dart';
import 'package:shabd/widgets/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthService _authService = Get.find();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController phoneEditController =
      TextEditingController(text: '+91');
  final RxBool sent = false.obs;

  RxString phoneNo = ''.obs;
  String verificationId = '';
  RxString smsCode = ''.obs;
  RxBool codeSent = false.obs;
  RxBool loading = false.obs;

  Future<void> createUser() async {
    await _authService.signInwithOTP(
      smsCode.toString(),
      verificationId.toString(),
    );
    loading.value = false;
  }

  Future<void> verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo.toString(),
      timeout: const Duration(seconds: 60),
      verificationCompleted: (AuthCredential authResult) {
        CustomLoaders().customSnackBar('Authentication Successful',
            'User Verified with mobile number $phoneNo');
        Get.offAll<SplashScreen>(() => const SplashScreen());
      },
      verificationFailed: (FirebaseAuthException authException) {
        CustomLoaders().customSnackBar(
            'Authentication Error - WRONG MOBILE NUMBER',
            authException.message.toString());
      },
      codeSent: (String verId, [int? forceResend]) async {
        codeSent.value = true;
        debugPrint('code sent to $phoneNo');
        loading.value = false;
        verificationId = verId;
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
      },
    );
  }
}
