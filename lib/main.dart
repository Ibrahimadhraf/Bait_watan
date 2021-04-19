import 'package:flutter/material.dart';
import 'package:bait_watan/vew/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: [
        GestureType.onTap,
        GestureType.onPanUpdateDownDirection,
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
         home: SplashScreen(),
      ),
    );
  }
}

