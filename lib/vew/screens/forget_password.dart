import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/login_screen.dart';
import 'package:bait_watan/vew/screens/recieve_bin_code.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';

import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  final GlobalKey<FormFieldState> emailFormFieldState = GlobalKey();
  final TextEditingController emailTextEditingController =
  TextEditingController();
  final emailFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(SizeConfig().blockSizeVertical * 6),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: CostumeText(
                      text: 'نسيت كلمة المرور؟',
                      color: ApplicationColors().textColor,
                      fontSize: SizeConfig().fontSize17,
                    ),
                  ),
                  Image.asset('images/footer.png' ,width: SizeConfig().blockSizeHorizontal*50,
                  height:SizeConfig().blockSizeHorizontal*50, ) ,
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  CostumeText(
                    text: 'اكتب البريد الإلكتروني',
                    color: ApplicationColors().textColor,
                    fontSize: SizeConfig().fontSize17,
                  ),
                  CostumeText(
                    text: 'الذي قمت بإدخاله',
                    color: ApplicationColors().textColor,
                    fontSize: SizeConfig().fontSize17,
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  CommonTextControllers.customTextField(
                       focusNode: emailFocus,
                      formKey: emailFormFieldState,
                      controller: emailTextEditingController,
                      labelText: 'البريد الإلكتروني ',
                      height: SizeConfig().safeBlockVertical * 7,
                      width: SizeConfig().screenWidth * .75,
                      isObscureText: false,
                      keyboardType: TextInputType.text,
                      suffix: CostumeIcon(Icons.mail,
                          ApplicationColors().textColor, SizeConfig().fontSize15) ,
                  validator: (value){
                    if (value.isEmpty) return "لا يمكن إدخال بريد إليكتروني فارغ !";
                    if (!value.contains('@'))
                      return "يجب إدخال بريد إليكترومي صحيح ";
                    else
                      return null;
                  },
                  onSubmitted: (trim){
                         emailFormFieldState.currentState.validate()?FocusScope.of(context).requestFocus(FocusNode()):print('');
                  }),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 10,
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
                                Get.to(ReceiveBinCode());
                          },
                          child: CostumeText(
                            text: 'استمرار',
                            color: Colors.white,
                            fontSize: SizeConfig().fontSize15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all( SizeConfig().blockSizeHorizontal * 15,),
                        child: GestureDetector(

                          child: CostumeText(
                            text: 'تسجيل دخول',
                            fontSize: SizeConfig().fontSize15,
                            color: ApplicationColors().textColor,
                          ),
                          onTap: (){
                       emailFormFieldState.currentState.validate()?  Get.to(LoginScreen()):print('');
                          },
                        ),
                      )),
                ],


              ),
            ),
          )
        ],
      ),
    );
  }
}
