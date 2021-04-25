import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:flutter/material.dart';

class FollowAdvertisementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
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
          text: ' تتبع الإعلانات',
          color: ApplicationColors().textColor,
          fontSize: SizeConfig().fontSize17,
        ),
        actions: [],
      ),
      body: ListView.builder(
          itemCount: 3,

          scrollDirection: Axis.vertical,
          itemBuilder: (index,context){
            return   Padding(
              padding:  EdgeInsets.only( top:SizeConfig().blockSizeVertical*1 ,bottom: SizeConfig().blockSizeVertical*1),
              child: Center(
                child: Container(
                  // decoration: BoxDecoration(
                  //
                  //   borderRadius: BorderRadius.only(topLeft: Radius.circular(SizeConfig().blockSizeVertical*2 , ) ,
                  //   topRight:Radius.circular(SizeConfig().blockSizeVertical*2 , ) ),
                  //
                  //
                  // ),

                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.all( Radius.circular(SizeConfig().blockSizeVertical*3) ,
                      )),
                  height: SizeConfig().screenHeight*.75,
                  width:SizeConfig().screenWidth*.95 ,
                  child: Column(
                    children: [
                      Container(

                        decoration: BoxDecoration(
                          color: ApplicationColors().textColor,

                    borderRadius: BorderRadius.only(topLeft: Radius.circular(SizeConfig().blockSizeVertical*2 , ) ,
                    topRight:Radius.circular(SizeConfig().blockSizeVertical*2 , ) ),),


                        width: SizeConfig().screenWidth,


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
                                Image.asset(
                                  'images/balance.png',
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                CostumeText(
                                  text:'الحي,المنطقه,رقم القطعه' ,
                                  color: Colors.white,
                                  fontSize: SizeConfig().fontSize17,
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(SizeConfig().blockSizeVertical * 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'images/region.png',
                                  color: ApplicationColors().gray,
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'رقم القطعه' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:'٦٠٦' ,
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
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CostumeText(
                                      text:'المنطقة الرابعه' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:'الرابعة' ,
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
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'الحي' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:'   الأول' ,
                                      color: ApplicationColors().gray,
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
                        width: SizeConfig().screenWidth ,
                        color: ApplicationColors().gray,
                      ),

                      Padding(
                        padding:  EdgeInsets.all(SizeConfig().blockSizeVertical * 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'images/money.png',
                                  color: ApplicationColors().gray,
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'   الأوفر' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:' ٠٠. ٤٠٠  ج م' ,
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
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CostumeText(
                                      text:'المدفوع' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:' ٠٠. ٤٠٠  ج م' ,
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
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'المطلوب' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text:'٠٠. ٤٠٠  ج م' ,
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
                        width: SizeConfig().screenWidth ,
                        color: ApplicationColors().gray,
                      ),
                      Padding(
                        padding:  EdgeInsets.all(SizeConfig().blockSizeVertical * 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'images/premium.png',
                                  color: ApplicationColors().gray,
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'التميز' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),

                                    CostumeText(
                                      text:'ناصيه' ,
                                      color: ApplicationColors().gray,
                                      fontSize: SizeConfig().fontSize14,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(

                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                CostumeText(
                                  text:'المرحلة' ,
                                  color: ApplicationColors().textColor,
                                  fontSize: SizeConfig().fontSize15,
                                ),
                                CostumeText(
                                  text:'الثانية' ,
                                  color: ApplicationColors().gray,
                                  fontSize: SizeConfig().fontSize14,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'images/plan.png',
                                  color: ApplicationColors().gray,
                                  width: SizeConfig().blockSizeVertical * 5,
                                  height: SizeConfig().blockSizeVertical * 4,
                                ),
                                Column(
                                  children: [
                                    CostumeText(
                                      text:'المساحة' ,
                                      color: ApplicationColors().textColor,
                                      fontSize: SizeConfig().fontSize15,
                                    ),
                                    CostumeText(
                                      text: '٣٠٠   متر مربع',
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
                        width: SizeConfig().screenWidth ,
                        color: ApplicationColors().gray,
                      ),
                      Padding(
                        padding:EdgeInsets.all(SizeConfig().blockSizeVertical * 1),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: SizeConfig().blockSizeVertical*20,
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
                                        text: 'التفاصيل ',
                                        color: Colors.white,
                                        fontSize: SizeConfig().fontSize15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VerticalSpace(
                              space: SizeConfig().blockSizeVertical * 10,
                            ),
                            Row(

                              children: [
                                CostumeText(
                                  text: 'الأجمالي',
                                  color: ApplicationColors().textColor,
                                  fontSize: SizeConfig().fontSize15,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],

                  ),

                ),
              ),
            );
          }),
    );
  }
}
