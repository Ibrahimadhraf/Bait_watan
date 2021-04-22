import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/profile_screen.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/horizontal_space.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(

        children: [

          HorizontalSpace(
            space: SizeConfig().blockSizeHorizontal * 2,
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * 7,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().primaryColor,
          ),
          HorizontalSpace(
            space: SizeConfig().blockSizeHorizontal * 2,
          ),
          Center(
            child: Column(

              children: [
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
                Center(
                child:  CostumeText(
                    text: 'اسم المستخدم',
                    color: ApplicationColors().textColor,
                    fontSize: SizeConfig().fontSize17,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
          GestureDetector(
            onTap: (){
              Get.to(ProfileScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'images/Forward arrow.png',
                    width: SizeConfig().blockSizeVertical * 5,
                    height: SizeConfig().blockSizeVertical * 4,
                  ),
                  VerticalSpace(
                    space:SizeConfig().blockSizeVertical * 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CostumeText(
                        text: 'الحساب',
                        color: ApplicationColors().textColor,
                        fontSize: SizeConfig().fontSize16,

                      ),
                      Image.asset(
                        'images/manage_accounts_black_24dp.png',
                        width: SizeConfig().blockSizeVertical * 7,
                        height: SizeConfig().blockSizeVertical * 5,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'images/Forward arrow.png',
                  width: SizeConfig().blockSizeVertical * 5,
                  height: SizeConfig().blockSizeVertical * 4,
                ),
                VerticalSpace(
                  space:SizeConfig().blockSizeVertical * 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumeText(
                      text: 'المقارنه',
                      color: ApplicationColors().textColor,
                      fontSize: SizeConfig().fontSize16,

                    ),
                    Image.asset(
                      'images/balanc.png',
                      width: SizeConfig().blockSizeVertical * 5,
                      height: SizeConfig().blockSizeVertical * 5,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'images/Forward arrow.png',
                  width: SizeConfig().blockSizeVertical * 5,
                  height: SizeConfig().blockSizeVertical * 4,
                ),
                VerticalSpace(
                  space:SizeConfig().blockSizeVertical * 24.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right:8.0),
                      child: CostumeText(
                        text: 'تتبع الإعلانات'+"",
                        color: ApplicationColors().textColor,
                        fontSize: SizeConfig().fontSize16,

                      ),
                    ),
                    Image.asset(
                      'images/XMLID_2403_.png',
                      width: SizeConfig().blockSizeVertical * 5,
                      height: SizeConfig().blockSizeVertical * 5,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'images/Forward arrow.png',
                  width: SizeConfig().blockSizeVertical * 5,
                  height: SizeConfig().blockSizeVertical * 4,
                ),
                VerticalSpace(
                  space:SizeConfig().blockSizeVertical * 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumeText(
                      text: 'تواصل معنا',
                      color: ApplicationColors().textColor,
                      fontSize: SizeConfig().fontSize16,

                    ),
                    Image.asset(
                      'images/operator.png',
                      width: SizeConfig().blockSizeVertical * 5,
                      height: SizeConfig().blockSizeVertical * 5,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

                VerticalSpace(
                  space:SizeConfig().blockSizeVertical *29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumeText(
                      text: 'تسجيل الخروج',
                      color: ApplicationColors().textColor,
                      fontSize: SizeConfig().fontSize16,

                    ),
                    Image.asset(
                      'images/logout_black_24dp.png',
                      width: SizeConfig().blockSizeVertical * 5,
                      height: SizeConfig().blockSizeVertical * 5,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig().blockSizeHorizontal * .5,
            width: SizeConfig().screenWidth ,
            color: ApplicationColors().gray,
          ),
        ],
      ),
    );
  }
}
