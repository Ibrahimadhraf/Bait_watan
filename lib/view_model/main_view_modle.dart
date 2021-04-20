import 'package:bait_watan/vew/screens/favourite_screen.dart';
import 'package:bait_watan/vew/screens/home_screen.dart';
import 'package:bait_watan/vew/screens/advertisement_screen.dart';
import 'package:bait_watan/vew/screens/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewModel extends GetxController{
   ValueNotifier<int>_navigatorValue=ValueNotifier(0);
  get navigatorValue=>_navigatorValue.value;
  Widget currentScreen=HomeScreen();
  void changeNavigatorValue(int selectedValue){
    _navigatorValue.value=selectedValue;


    switch(selectedValue){
      case 0:
        currentScreen=HomeScreen();
        break;
      case 1:
        currentScreen=FavouriteScreen();
        break;
      case 2:
        currentScreen=AdvertisementScreen();
        break;
      case 2:
        currentScreen=MoreScreen();
        break;
    }
    update();
  }

}
