 import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  RegisterViewModel extends  GetxController{
  ValueNotifier<bool> _isSecure = ValueNotifier(true);
  ValueNotifier<String> _personRole = ValueNotifier('');
  bool get isSecure=>_isSecure.value;
  String get personRole=>_personRole.value;
  void togglePassword() {

    _isSecure.value=!_isSecure.value;
    update();
  }
  void getPersonRole(String role){
    switch(role){
      case 'مالك':
    _personRole.value=role;
       break;
      case 'مشتري':
        _personRole.value=role;
        break;
      case 'شركه':
        _personRole.value=role;
        break;
    }


    update();
  }
}