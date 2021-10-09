import 'package:flutter/material.dart';
import 'package:shabd/utils/scaling.dart';
import 'package:shabd/utils/theme.dart';
import 'package:shabd/widgets/snackbar.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColour,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomLoaders().customSnackBar(
              'No Network Available',
              'Please connect to a networked connection to ensure the proper usage of the appiciaction',
              duration: const Duration(seconds: 10),
            ),
            Container(
                padding: EdgeInsets.all(SizeConfig.safeBlockVertical!),
                height: SizeConfig.screenWidth! * 0.8,
                child: Image.asset('assets/images/404.png')),
            //text showing no internet connection
            Text(
              'I am sorry, we are unable to connect to the internet',
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: SizeConfig.safeBlockHorizontal! * 5,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
