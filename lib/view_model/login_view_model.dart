import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel  extends GetxController{
  ValueNotifier<bool> _isSecure = ValueNotifier(true);
  ValueNotifier<bool> _isRemembered = ValueNotifier(false);

  bool get isRemember=>_isRemembered.value;
  bool get isSecure=>_isSecure.value;
  void togglePassword() {

    _isSecure.value=!_isSecure.value;
    update();
  }
  void toggleRememberMe(bool flag){
    _isRemembered.value=flag;
    update();
  }
}