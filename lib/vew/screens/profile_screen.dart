import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/mainScreen.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ApplicationColors().gray,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ApplicationColors().textColor, //change your color here
        ),
        shadowColor: ApplicationColors().primaryColor,
        elevation: 8,
        centerTitle: true,
        backgroundColor: ApplicationColors().primaryColor,
        toolbarHeight: SizeConfig().safeBlockVertical * 13,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: const Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
        ),
        title: CostumeText(
          text: 'الحساب',
          color: ApplicationColors().textColor,
          fontSize: SizeConfig().fontSize17,
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: SizeConfig().blockSizeVertical*7),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(SizeConfig().blockSizeVertical*2),
                    color: Colors.white,

                  ),

                  width: SizeConfig().screenWidth*.9,
                  height: SizeConfig().screenHeight*.65,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                        Get.to(EditProfileScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset(
                              'images/edit.png',
                              width: SizeConfig().blockSizeVertical * 5,
                              height: SizeConfig().blockSizeVertical * 4,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: SizeConfig().blockSizeVertical * 15,
                        height: SizeConfig().blockSizeVertical * 15,
                        decoration: BoxDecoration(
                            color: ApplicationColors().primaryColor, shape: BoxShape.circle),
                        child: Center(
                          child: CostumeText(
                            text: 'Logo',
                            color: ApplicationColors().textColor,
                            fontSize: SizeConfig().fontSize17,
                          ),
                        ),
                      ),
                      CommonTextControllers.customTextField(

                          labelText: 'اسم المستخدم ',

                          height: SizeConfig().safeBlockVertical * 7,
                          width: SizeConfig().screenWidth * .75,
                          isObscureText: false,
                          keyboardType: TextInputType.number,
                          suffix: CostumeIcon(FontAwesomeIcons.user,
                              ApplicationColors().textColor, SizeConfig().fontSize15),
                          validator: (value){
                            // if (value.isEmpty) return 'رقم الموبايل لا يمكن أن يكون فارغا!';
                            // else if(value.length < 11){
                            //   return 'من فضلك أدخل رقم هاتف صحيح';

                            // }else{
                            //   return null;
                            // }
                          },
                          onSubmitted: (trim){
                            //  phoneFormFieldState.currentState.validate()?   AppUtils().fieldFocusChange(context, phoneFocus, passwordFocus):print('rtt');
                          }),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 5,
                      ),
                      CommonTextControllers.customTextField(

                          labelText: 'البريد الإلكتروني ',

                          height: SizeConfig().safeBlockVertical * 7,
                          width: SizeConfig().screenWidth * .75,
                          isObscureText: false,
                          keyboardType: TextInputType.text,
                          suffix: CostumeIcon(Icons.mail,
                              ApplicationColors().textColor, SizeConfig().fontSize15),
                          validator: (value){
                            // if (value.isEmpty) return 'رقم الموبايل لا يمكن أن يكون فارغا!';
                            // else if(value.length < 11){
                            //   return 'من فضلك أدخل رقم هاتف صحيح';
                            //
                            // }else{
                            //   return null;
                            // }
                          },
                          onSubmitted: (trim){
                          //  phoneFormFieldState.currentState.validate()?   AppUtils().fieldFocusChange(context, phoneFocus, passwordFocus):print('rtt');
                          }),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 5,
                      ),
                      CommonTextControllers.customTextField(

                          labelText: 'رقم الموبايل ',

                          height: SizeConfig().safeBlockVertical * 7,
                          width: SizeConfig().screenWidth * .75,
                          isObscureText: false,
                          keyboardType: TextInputType.number,
                          suffix: CostumeIcon(FontAwesomeIcons.phone,
                              ApplicationColors().textColor, SizeConfig().fontSize15),
                          validator: (value){
                            if (value.isEmpty) return 'رقم الموبايل لا يمكن أن يكون فارغا!';
                            else if(value.length < 11){
                              return 'من فضلك أدخل رقم هاتف صحيح';

                            }else{
                              return null;
                            }
                          },
                          onSubmitted: (trim){
                            //  phoneFormFieldState.currentState.validate()?   AppUtils().fieldFocusChange(context, phoneFocus, passwordFocus):print('rtt');
                          }),
                    ],
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
