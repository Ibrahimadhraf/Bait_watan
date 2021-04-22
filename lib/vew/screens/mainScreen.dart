import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/view_model/main_view_modle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<MainViewModel>(
      init: Get.find(),
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: buttonNavigationBar(),
      ),
    );
  }


}
Widget buttonNavigationBar() {
  return GetBuilder<MainViewModel>(
    init: Get.find(),
    builder: (controller) => BottomNavigationBar(

      items: [
        BottomNavigationBarItem(
            label: 'الرئيسيه',
            icon: Padding(
              padding:
              EdgeInsets.only(top: SizeConfig().safeBlockVertical * 2),
              child: Image.asset(
                'images/home_black_24dp.png',
                fit: BoxFit.contain,
                width: SizeConfig().safeBlockVertical * 3,
              ),
            )),
        BottomNavigationBarItem(
            label: 'الأعلانات',

            icon: Padding(
              padding:
              EdgeInsets.only(top: SizeConfig().safeBlockVertical * 2),
              child: Image.asset(
                'images/advertesment.png',
                fit: BoxFit.contain,
                width: SizeConfig().safeBlockVertical * 3,
              ),
            )),
        BottomNavigationBarItem(
            label: 'المفضله',

            icon: Padding(
              padding:
              EdgeInsets.only(top: SizeConfig().safeBlockVertical * 2),
              child: Image.asset(
                'images/favorite_black_24dp.png',
                fit: BoxFit.contain,
                width: SizeConfig().safeBlockVertical * 3,
              ),
            )),
        BottomNavigationBarItem(
            label: 'المزيد',

            icon: Padding(
              padding:
              EdgeInsets.only(top: SizeConfig().safeBlockVertical * 2),
              child: Image.asset(
                'images/more.png',
                fit: BoxFit.contain,
                width: SizeConfig().safeBlockVertical * 3,
              ),
            )),
      ],
      elevation: 6,

      selectedItemColor: ApplicationColors().textColor,
      backgroundColor: Colors.transparent,
      currentIndex: controller.navigatorValue,
      onTap: (index) {
        controller.changeNavigatorValue(index);
      },
    ),
  );
}