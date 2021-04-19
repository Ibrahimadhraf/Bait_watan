import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/change_password.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:get/get.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class ReceiveBinCode extends StatelessWidget {
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
                      text: 'تأكيد التحقيق',
                      color: ApplicationColors().textColor,
                      fontSize: SizeConfig().fontSize17,
                    ),
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 10,
                  ),
                  Image.asset(
                    'images/messages.png',
                    width: SizeConfig().blockSizeHorizontal * 50,
                    height: SizeConfig().blockSizeHorizontal * 50,
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  CostumeText(
                    text: 'اكتب  رمز التحقق لقد قمنابإرساله ',
                    color: ApplicationColors().textColor,
                    fontSize: SizeConfig().fontSize15,
                  ),
                  CostumeText(
                    text: 'علي بريدك الإلكتروني',
                    color: ApplicationColors().textColor,
                    fontSize: SizeConfig().fontSize15,
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  PinEntryTextField(
                    fields: 4,
                    onSubmit: (String pin) {}, // end onSubmit
                  ),
                  HorizontalSpace(
                    space: SizeConfig().blockSizeHorizontal * 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                          SizeConfig().blockSizeHorizontal * 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: CostumeText(
                                text: 'إعادة إرسال',
                                fontSize: SizeConfig().fontSize15,
                                color: ApplicationColors().textColor,
                              ),
                              onTap: () {},
                            ),
                            VerticalSpace(
                              space: SizeConfig().blockSizeHorizontal * 5,
                            ),
                            CostumeText(
                              text: ' إذا لم يصلك الرمز؟ ',
                              fontSize: SizeConfig().fontSize15,
                              color: ApplicationColors().gray,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      width: SizeConfig().blockSizeVertical * 40,
                      height: SizeConfig().blockSizeVertical * 6,
                      decoration: BoxDecoration(
                          color: ApplicationColors().textColor,
                          border: Border.all(
                            color: ApplicationColors().textColor,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(
                                  SizeConfig().blockSizeVertical *
                                      25))),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(ChangePasswordScreen());
                          },
                          child: CostumeText(
                            text: 'تأكيد',
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
    );
  }
}
