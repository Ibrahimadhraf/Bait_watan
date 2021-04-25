import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ApplicationColors().textColor, //change your color here
        ),
        shadowColor: ApplicationColors().primaryColor,
        elevation: 8,
        centerTitle: true,
        backgroundColor: ApplicationColors().primaryColor,
        toolbarHeight: SizeConfig().safeBlockVertical * 10,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: const Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
        ),
        title: CostumeText(
          text: 'تواصل معنا',
          color: ApplicationColors().textColor,
          fontSize: SizeConfig().fontSize17,
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Center(
            child: CostumeText(
              text: 'نحن سعداء لتلقي استفساراتكم واقتراحاتكم ',
              color: ApplicationColors().textColor,
              fontSize: SizeConfig().fontSize16,
            ),
          ),
          CommonTextControllers.customTextField(
              maxLines: 5,
              inHome: true,
              fillColor: ApplicationColors().gray,
              labelText: 'اضف رساله',
              height: SizeConfig().screenHeight * .2,
              width: SizeConfig().screenWidth * .9,
              isObscureText: false,
              keyboardType: TextInputType.text,
              validator: (value) {
                // if (value.length < 11) {
                //   return '';
                // } else {
                //   return null;
                // }
              },
              onSubmitted: (trim) {}),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: ApplicationColors().textColor,
                      size: SizeConfig().fontSize17,
                    ),
                    onPressed: () {}),
                CostumeText(
                  text:'للمزيد إنصل ب ' ,
                  color: ApplicationColors().textColor,
                  fontSize: SizeConfig().fontSize16,
                ),
              ],
            ),
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

                  },
                  child: CostumeText(
                    text: 'ارسال',
                    color: Colors.white,
                    fontSize: SizeConfig().fontSize15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
