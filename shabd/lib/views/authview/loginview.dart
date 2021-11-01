import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabd/utils/scaling.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/views/authview/authcontroller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);

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
                        'Sign in',
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
              height: SizeConfig.screenHeight! * 0.3,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal! * 10,
                left: SizeConfig.safeBlockHorizontal! * 6.5,
                right: SizeConfig.safeBlockHorizontal! * 6.5,
              ),
              child: TextField(
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
                  onPressed: () {},
                  child: const Text(
                    'GET OTP',
                    style: TextStyle(
                      color: kTextColourBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
