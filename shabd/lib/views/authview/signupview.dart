import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/scaling.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/authview/authcontroller.dart';
import 'package:shabd/views/authview/loginview.dart';
import 'package:shabd/views/homeview/homeview.dart';

class SignupView extends GetView<AuthController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [kBlueBgColor, kSecondaryColor]),
        ),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal! * 15,
                      left: SizeConfig.safeBlockHorizontal! * 5),
                  child: const RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: kTextColourBlack,
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal! * 8,
                      left: SizeConfig.safeBlockHorizontal! * 5),
                  width: SizeConfig.screenWidth! * 0.6,
                  alignment: Alignment.center,
                  child: const Text(
                    'A world of knowledge in an app',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: kTextColourBlack,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(

              height: SizeConfig.screenHeight! * 0.1,


            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal! * 10,
                left: SizeConfig.safeBlockHorizontal! * 6.5,
                right: SizeConfig.safeBlockHorizontal! * 6.5,
              ),
              child: TextField(
                cursorHeight: 10,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: const TextStyle(
                  color: kTextColourBlack,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: kBlueBgColor,
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  labelStyle: const TextStyle(
                    color: kTextColourBlack,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal! * 10,
                left: SizeConfig.safeBlockHorizontal! * 6.5,
                right: SizeConfig.safeBlockHorizontal! * 6.5,
              ),
              child: TextField(
                cursorHeight: 10,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: const TextStyle(
                  color: kTextColourBlack,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: kBlueBgColor,
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  labelStyle: const TextStyle(
                    color: kTextColourBlack,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal! * 10,
                left: SizeConfig.safeBlockHorizontal! * 6.5,
                right: SizeConfig.safeBlockHorizontal! * 6.5,
              ),
              child: TextField(
                cursorHeight: 10,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                style: const TextStyle(
                  color: kTextColourBlack,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: kBlueBgColor,
                  labelText: 'Email',
                  hintText: 'Enter your email address',
                  labelStyle: const TextStyle(
                    color: kTextColourBlack,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal! * 10,
                left: SizeConfig.safeBlockHorizontal! * 6.5,
                right: SizeConfig.safeBlockHorizontal! * 6.5,
              ),
              child: controller.signSent.value
                  ? TextField(
                      cursorHeight: 10,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(
                        color: kTextColourBlack,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: kBlueBgColor,
                        labelText: 'One-Time-Password',
                        hintText: 'Enter the received OTP',
                        labelStyle: const TextStyle(
                          color: kTextColourBlack,
                          fontSize: 14,
                        ),
                      ),
                    )
                  : TextField(
                      cursorHeight: 10,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(
                        color: kTextColourBlack,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: kBlueBgColor,
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        labelStyle: const TextStyle(
                          color: kTextColourBlack,
                          fontSize: 14,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kBlueBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    if (controller.signSent.value == false) {
                      controller.signSent.value = true;
                    } else {

                      Get.to(() => HomeView());

                    }
                  },
                  child: controller.signSent.value
                      ? const Text(
                          'CONFIRM',
                          style: TextStyle(
                            color: kTextColourBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      : const Text(
                          'GET OTP',
                          style: TextStyle(
                            color: kTextColourBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 5),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Didn\'t receive a OTP?',
                        style: const TextStyle(
                            color: kTextColourBlack, fontSize: 12),

                        children: <TextSpan>[
                          TextSpan(
                              text: ' Send me again',
                              style: const TextStyle(

                                  decoration: TextDecoration.underline,
                                  color: kTextColourBlue,
                                  fontSize: 12),

                              recognizer: TapGestureRecognizer()..onTap = () {})
                        ]),
                  ),
                )),
            Container(

                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 5),

                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(

                            color: kTextColourBlack, fontSize: 12),

                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign in',
                              style: const TextStyle(

                                  decoration: TextDecoration.underline,
                                  color: kTextColourBlue,
                                  fontSize: 12),

                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.offAll(() => const LoginView());
                                })
                        ]),
                  ),
                )),
            Container(

                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 5),

                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Sign In Later',
                      style: const TextStyle(

                          decoration: TextDecoration.underline,
                          color: kTextColourBlue,
                          fontSize: 12),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.offAll(() => HomeView());


                        },
                    ),
                  ),
                )),

            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),

          ],
        ),
      ),
    );
  }
}
