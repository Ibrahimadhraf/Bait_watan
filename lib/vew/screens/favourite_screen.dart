import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/screens/contact_us_screen.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
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
          text: 'المفضله',
          color: ApplicationColors().textColor,
          fontSize: SizeConfig().fontSize17,
        ),
        actions: [],
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (index, context) {
            return Padding(
              padding: EdgeInsets.all(SizeConfig().blockSizeVertical * 2),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig().blockSizeVertical * 2),
                    )),
                width: SizeConfig().screenWidth * .95,
                height: SizeConfig().screenHeight * .68,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ApplicationColors().textColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                SizeConfig().blockSizeVertical * 2),
                            topRight: Radius.circular(
                                SizeConfig().blockSizeVertical * 2)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/favorite_black_24dp.png',
                                width: SizeConfig().blockSizeVertical * 5,
                                height: SizeConfig().blockSizeVertical * 4,
                              ),
                              Image.asset(
                                'images/balanc.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 5,
                                height: SizeConfig().blockSizeVertical * 4,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CostumeText(
                                    text: 'الحي,المنطقه,رقم القطعه',
                                    color: Colors.white,
                                    fontSize: SizeConfig().fontSize17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: CostumeText(
                                      text: 'تاريخ الإعلان',
                                      color: ApplicationColors().gray,
                                      fontSize: SizeConfig().fontSize13,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child:
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                           color: ApplicationColors().primaryColor,

                        ),
                        child: CostumeText(
                          text: 'معروض للبيع',
                          color:ApplicationColors().textColor,
                        ),
                      ),
                    ),),
                    Padding(
                      padding:
                      EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                      child: Center(
                        child: Column(
                          children: [
                            CostumeText(
                              text:
                              '  متر علي فاصل داخله صريحه من بألم هيلز',
                              color: ApplicationColors().textColor,
                              fontSize: SizeConfig().fontSize14,
                            ),
                            CostumeText(

                              text:
                              '  مدفوع 52 الف دولار مطلوب 950 الف جنيهاول توكيل',
                              color: ApplicationColors().textColor,
                              fontSize: SizeConfig().fontSize14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConfig().blockSizeHorizontal * .5,
                      width: SizeConfig().screenWidth,
                      color: ApplicationColors().gray,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'images/region.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical *4 ,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                children: [
                                  CostumeText(
                                    text: '  رقم القطعه',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: '  ٦٠٦',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/place.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CostumeText(
                                    text: 'المنطقه ',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: 'الرابعه',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/kaap.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                children: [
                                  CostumeText(
                                    text: 'الحي ',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: 'الأول',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: SizeConfig().blockSizeHorizontal * .5,
                      width: SizeConfig().screenWidth,
                      color: ApplicationColors().gray,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'images/money.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                children: [
                                  CostumeText(
                                    text: '   المطلوب',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: ' ٠٠. ٤٠٠  ج م',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/money.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CostumeText(
                                    text: 'الأوفر',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: ' ٠٠. ٤٠٠  ج م',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/money.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                children: [
                                  CostumeText(
                                    text: 'المدفوع',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: '٠٠. ٤٠٠  ج م',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: SizeConfig().blockSizeHorizontal * .5,
                      width: SizeConfig().screenWidth,
                      color: ApplicationColors().gray,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Center(
                                child: CostumeText(
                                  text: 'الإجمالي',
                                  color: ApplicationColors().textColor,
                                  fontSize: SizeConfig().fontSize15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              CostumeText(
                                text: 'المرحله',
                                color: ApplicationColors().textColor,
                                fontSize: SizeConfig().fontSize15,
                              ),
                              CostumeText(
                                text: 'الثانيه',
                                color: ApplicationColors().gray,
                                fontSize: SizeConfig().fontSize14,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/place.png',
                                color: ApplicationColors().gray,
                                width: SizeConfig().blockSizeVertical * 4,
                                height: SizeConfig().blockSizeVertical * 3,
                              ),
                              Column(
                                children: [
                                  CostumeText(
                                    text: 'المساحه',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                  CostumeText(
                                    text: ' ٤٠٠  متر مربع  ',
                                    color: ApplicationColors().gray,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: SizeConfig().blockSizeHorizontal * .5,
                      width: SizeConfig().screenWidth,
                      color: ApplicationColors().gray,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: SizeConfig().blockSizeVertical * 20,
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
                                  onTap: () {},
                                  child: CostumeText(
                                    text: 'التفاصيل ',
                                    color: Colors.white,
                                    fontSize: SizeConfig().fontSize15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // VerticalSpace(
                          //   space: SizeConfig().blockSizeVertical * 5,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CostumeText(
                                  text: 'اسم صاحب الإعلان',
                                  color: ApplicationColors().textColor,
                                  fontSize: SizeConfig().fontSize14,
                                ),
                              ),
                              VerticalSpace(
                                space: SizeConfig().blockSizeVertical * 2,
                              ),
                              Container(
                                width: SizeConfig().blockSizeVertical * 6.5,
                                height: SizeConfig().blockSizeVertical * 6.5,
                                decoration: BoxDecoration(
                                    color: ApplicationColors().primaryColor,
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: CostumeText(
                                    text: 'Logo',
                                    color: ApplicationColors().textColor,
                                    fontSize: SizeConfig().fontSize14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
