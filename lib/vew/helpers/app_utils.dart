import 'package:flutter/material.dart';

class AppUtils{
  AppUtils ._internal();
  static final AppUtils _instance = AppUtils._internal();
  factory AppUtils()=>_instance;
  fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  createFilterDialog(BuildContext context , Widget alertLayout) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(content: alertLayout ,);
        });
  }
}