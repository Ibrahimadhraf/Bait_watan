import 'package:bait_watan/vew/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/app_utils.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/forget_password.dart';
import 'package:bait_watan/vew/screens/home_screen.dart';
import 'package:bait_watan/vew/screens/register_screen.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:bait_watan/view_model/login_view_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../widgets/common_text_controller.dart';
import '../widgets/costome_icon.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormFieldState> phoneFormFieldState = GlobalKey();
  final GlobalKey<FormFieldState> passwordFormFieldState = GlobalKey();
  final TextEditingController phoneTextEditingController =
  TextEditingController();
  final TextEditingController passwordTextEditingController =
  TextEditingController();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<LoginViewModel>(
      init: Get.put(LoginViewModel()),
      builder: (ref) => Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 15,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: SizeConfig().blockSizeVertical * 15,
                          height: SizeConfig().blockSizeVertical * 15,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: CostumeText(
                              text: 'Logo',
                              fontSize: SizeConfig().fontSize17,
                            ),
                          ),
                        ),
                        CostumeText(
                          text: '?????????? ????',
                          color: ApplicationColors().textColor,
                          fontSize: SizeConfig().fontSize17,
                        ),
                        CostumeText(
                          text: '?????????? ???????? ',
                          color: ApplicationColors().textColor,
                          fontSize: SizeConfig().fontSize13,
                        )
                      ],
                    ),
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  CommonTextControllers.customTextField(
                    controller: phoneTextEditingController,
                    formKey: phoneFormFieldState,
                      focusNode: phoneFocus,
                      labelText: '?????? ???????????????? ',

                      height: SizeConfig().safeBlockVertical * 7,
                      width: SizeConfig().screenWidth * .75,
                      isObscureText: false,
                      keyboardType: TextInputType.number,
                      suffix: CostumeIcon(FontAwesomeIcons.phone,
                          ApplicationColors().textColor, SizeConfig().fontSize15),
                  validator: (value){
                    if (value.isEmpty) return '?????? ???????????????? ???? ???????? ???? ???????? ??????????!';
                    else if(value.length < 11){
                      return '???? ???????? ???????? ?????? ???????? ????????';

                    }else{
                      return null;
                    }
                  },
                  onSubmitted: (trim){
                 phoneFormFieldState.currentState.validate()?   AppUtils().fieldFocusChange(context, phoneFocus, passwordFocus):print('rtt');
                  }),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  CommonTextControllers.customTextField(
                    controller: passwordTextEditingController,
                    focusNode: passwordFocus,
                    formKey: passwordFormFieldState,
                    labelText: '???????? ????????????',
                    height: SizeConfig().safeBlockVertical * 7,
                    width: SizeConfig().screenWidth * .75,
                    keyboardType: TextInputType.number,
                    suffix: CostumeIcon(FontAwesomeIcons.lock,
                        ApplicationColors().textColor, SizeConfig().fontSize15),

                      prefix: InkWell(
                      onTap: () {
                        ref.togglePassword();
                      },
                      child: Icon(

                        ref.isSecure ? Icons.visibility : Icons.visibility_off,
                        size: SizeConfig().fontSize15,
                        color: ApplicationColors().textColor,
                      ),
                    ),
                      validator: (value){
                        if (value.isEmpty) return '???? ???????? ?????????? ???????? ???????? ??????????!';
                        if (value.length < 6)
                          return '???? ???????? ?????????? ???????? ???????? ?????? ???? ?????? ????????';
                        else
                          return null;
                      },
                      onSubmitted: (trim){

                    passwordFormFieldState.currentState.validate()?  FocusScope.of(context).requestFocus(FocusNode()):print('');
                      }
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: SizeConfig().blockSizeHorizontal*10 ,vertical: SizeConfig().blockSizeHorizontal*5 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: GestureDetector(
                            child: CostumeText(
                              text: '???????? ???????? ??????????',
                              color: ApplicationColors().textColor,
                              fontSize: SizeConfig().fontSize15,
                            ),
                            onTap: (){
                              Get.to(ForgetPassword());
                            },
                          ),
                        ),



                      ],
                    ),
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  GestureDetector(
                    child: Container(
                      width: SizeConfig().blockSizeVertical*40,
                      height: SizeConfig().blockSizeVertical*6,
                      decoration: BoxDecoration(
                          color: ApplicationColors().textColor,
                          border: Border.all(
                            color: ApplicationColors().textColor,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular( SizeConfig().blockSizeVertical*25))
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: (){
                         if(phoneFormFieldState.currentState.validate()&&phoneFormFieldState.currentState.validate()){
                           Get.offAll(()=>MainScreen());
                         }
                          },
                          child: CostumeText(
                            text: '?????????? ???????? ',
                            color: Colors.white,
                            fontSize: SizeConfig().fontSize15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all( SizeConfig().blockSizeHorizontal * 20,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(

                                  child: CostumeText(
                                    text: '???????????? ????????',
                                    fontSize: SizeConfig().fontSize15,
                                    color: ApplicationColors().textColor,
                                  ),
                                  onTap: (){
                                    Get.to(()=>RegisterScreen());
                                  },
                                ),
                                VerticalSpace(
                                  space:  SizeConfig().blockSizeHorizontal * 5,
                                ),
                                CostumeText(
                                  text: '?????? ???????? ?????????? ',
                                  fontSize: SizeConfig().fontSize15,
                                  color: ApplicationColors().gray,
                                ),


                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
