import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/login_screen.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:bait_watan/view_model/change_password_view_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<ChangePasswordViewModel>(
      init: Get.put(ChangePasswordViewModel()),
      builder:(ref)=> Scaffold(
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig().blockSizeVertical * 6),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: CostumeText(
                          text: 'تعيين كلمة المرور',
                          color: ApplicationColors().textColor,
                          fontSize: SizeConfig().fontSize18,
                        ),
                      ),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 15,
                      ),
                      CostumeText(
                        text: 'اكتب  كلمة مرور جديده ',
                        color: ApplicationColors().textColor,
                        fontSize: SizeConfig().fontSize17,
                      ),
                      CostumeText(
                        text: 'لتصل إلى حسابك',
                        color: ApplicationColors().textColor,
                        fontSize: SizeConfig().fontSize17,
                      ),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 10,
                      ),
                      CommonTextControllers.customTextField(
                        labelText: 'كلمة المرور',
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
                      ),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 5,
                      ),
                      CommonTextControllers.customTextField(
                        labelText: 'تأكيد كلمة المرور',
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
                      ),
                      HorizontalSpace(
                        space: SizeConfig().blockSizeHorizontal * 15,
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
                                 Get.to(LoginScreen());
                              },
                              child: CostumeText(
                                text: 'تأكيد كلمة المرور ',
                                color: Colors.white,
                                fontSize: SizeConfig().fontSize15,
                              ),
                            ),
                          ),
                        ),
                      ),
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
