
import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/login_screen.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static String pageRoute = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 final int timerDurationMilliseconds = 1200;

 final int navigateDurationMilliseconds = 3000;


 @override
  void initState() {
   super.initState();

gotoNext();
  }

  @override
  Widget build(BuildContext context) {
SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ApplicationColors().primaryColor,
      body: Center(
        child: Container(

          width: SizeConfig().blockSizeVertical * 20,
          height: SizeConfig().blockSizeVertical *20,
          decoration: BoxDecoration(
            color: Colors.white,
              shape: BoxShape.circle
          ),
          child: Center(
            child: CostumeText(
              text: 'Logo',
              fontSize: SizeConfig().fontSize17,
            ),
          ),
        ),
      ),
    );

  }

  gotoNext() => Future.delayed(
      Duration(
        milliseconds: navigateDurationMilliseconds,
      ),
          ()  {
          Get.offAll(()=>LoginScreen());
  });
}

