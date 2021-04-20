import 'package:bait_watan/vew/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:bait_watan/view_model/register_view_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<RegisterViewModel>(
      init: Get.put(RegisterViewModel()),
      builder:(ref)=> Scaffold(
        body: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.all(SizeConfig().blockSizeVertical * 6),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     CostumeText(
                      text: 'إنشاء حساب ',
                      fontSize: SizeConfig().fontSize18,
                       color: ApplicationColors().textColor,
                    ),
                    Center(
                      child: Container(

                        width: SizeConfig().blockSizeVertical * 15,
                        height: SizeConfig().blockSizeVertical * 15,
                        decoration: BoxDecoration(
                            color: ApplicationColors().primaryColor, shape: BoxShape.circle),
                        child: Center(
                          child: CostumeText(
                            text: 'Logo',
                            fontSize: SizeConfig().fontSize17,
                          ),
                        ),
                      ),

                    ),
                    HorizontalSpace(
                      space: SizeConfig().blockSizeHorizontal * 5,
                    ),
                    CommonTextControllers.customTextField(

                        labelText: 'اسم المستخدم ',
                        height: SizeConfig().safeBlockVertical * 7,
                        width: SizeConfig().screenWidth * .75,
                        isObscureText: false,
                        keyboardType: TextInputType.text,
                        suffix: CostumeIcon(FontAwesomeIcons.user,
                            ApplicationColors().textColor, SizeConfig().fontSize15)),
                    CommonTextControllers.customTextField(

                        labelText: 'البريد الإلكتروني ',
                        height: SizeConfig().safeBlockVertical * 7,
                        width: SizeConfig().screenWidth * .75,
                        isObscureText: false,
                        keyboardType: TextInputType.text,
                        suffix: CostumeIcon(Icons.mail,
                            ApplicationColors().textColor, SizeConfig().fontSize15)),
                    CommonTextControllers.customTextField(
                      labelText: 'كلمة المرور',
                      height: SizeConfig().safeBlockVertical * 7,
                      width: SizeConfig().screenWidth * .75,
                      keyboardType: TextInputType.number,
                      suffix: CostumeIcon(
                          FontAwesomeIcons.lock,
                          ApplicationColors().textColor,
                          SizeConfig().fontSize15),
                      prefix: InkWell(
                        onTap: () {
                          ref.togglePassword();
                        },
                        child: Icon(
                          ref.isSecure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: SizeConfig().fontSize15,
                          color: ApplicationColors().textColor,
                        ),
                      ),
                    ),
                    CommonTextControllers.customTextField(
                      labelText: 'تأكيد كلمة المرور',
                      height: SizeConfig().safeBlockVertical * 7,
                      width: SizeConfig().screenWidth * .75,
                      keyboardType: TextInputType.number,
                      suffix: CostumeIcon(
                          FontAwesomeIcons.lock,
                          ApplicationColors().textColor,
                          SizeConfig().fontSize15),
                      prefix: InkWell(
                        onTap: () {
                          ref.togglePassword();
                        },
                        child: Icon(
                          ref.isSecure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: SizeConfig().fontSize15,
                          color: ApplicationColors().textColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(SizeConfig().blockSizeHorizontal*5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CostumeText(
                          text: 'حدد هل أنت ',
                          color: ApplicationColors().textColor,
                        ),
                      ),
                    ) ,
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(

                          children: [
                            CostumeText(
                              text: 'شركه',
                              fontSize: SizeConfig().fontSize15,
                              color: ApplicationColors().textColor,
                            ),
                            Radio(
                                value:'شركه',
                                activeColor: ApplicationColors().textColor,
                                onChanged:(value){

                                  ref.getPersonRole(value);
                                },
                                groupValue:ref.personRole),


                          ],
                        ),
                        Row(
                          children: [
                            CostumeText(
                              text: 'مشتري',
                              fontSize: SizeConfig().fontSize15,
                              color: ApplicationColors().textColor,
                            ),
                            Radio(
                                value:'مشتري',
                                activeColor: ApplicationColors().textColor,
                                onChanged:(value){
                                  ref.getPersonRole(value);
                                },
                                groupValue:ref.personRole),


                          ],
                        ),
                        Row(
                          children: [
                            CostumeText(
                              text: 'مالك',
                              fontSize: SizeConfig().fontSize15,
                              color: ApplicationColors().textColor,
                            ),
                            Radio(
                              value:'مالك',
                                activeColor: ApplicationColors().textColor,
                                onChanged:(value){
                                   ref.getPersonRole(value);
                            },
                                groupValue:ref.personRole),


                          ],
                        ),


                      ],
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
                              Get.to(()=>LoginScreen());
                            },
                            child: CostumeText(
                              text: 'تسجيل حساب جديد ',
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
                              padding: EdgeInsets.all( SizeConfig().blockSizeHorizontal * 10,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(

                                    child: CostumeText(
                                      text: 'تسجيل دخول',
                                      fontSize: SizeConfig().fontSize15,
                                      color: ApplicationColors().textColor,
                                    ),
                                    onTap: (){
                                      Get.to(()=>LoginScreen());
                                    },
                                  ),
                                  VerticalSpace(
                                    space:  SizeConfig().blockSizeHorizontal * 5,
                                  ),
                                  CostumeText(
                                    text: ' لديك حساب؟ ',
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
            )
          ],
        ),
      ),
    );
  }
}
