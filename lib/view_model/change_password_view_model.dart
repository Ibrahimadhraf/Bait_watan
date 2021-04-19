import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordViewModel extends GetxController{
  ValueNotifier<bool> _isSecure = ValueNotifier(true);
  bool get isSecure=>_isSecure.value;
  void togglePassword() {

    _isSecure.value=!_isSecure.value;
    update();
  }
}