import 'package:bait_watan/vew/helpers/app_utils.dart';
import 'package:bait_watan/vew/widgets/common_text_controller.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/vertical_space.dart';
import 'package:bait_watan/view_model/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeScreenViewModel>(
      init: Get.put(HomeScreenViewModel()),
      builder: (ref) => Scaffold(
        appBar: AppBar(
          shadowColor: ApplicationColors().primaryColor,
          elevation: 8,
          centerTitle: true,
          backgroundColor: ApplicationColors().primaryColor,
          toolbarHeight: SizeConfig().safeBlockVertical * 10,
          shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
              bottomLeft: const Radius.circular(70),
              bottomRight: Radius.circular(70),
            ),
          ),
          title: GestureDetector(
            onTap: () {
              print('tttttttttttt');
              AppUtils().createFilterDialog(context, ref.cityAlertLayout());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_drop_down,
                  color: ApplicationColors().textColor,
                  size: SizeConfig().fontSize18,
                ),
                CostumeText(
                  text: ref.city,
                  color: ApplicationColors().textColor,
                  fontSize: SizeConfig().fontSize15,
                ),
              ],
            ),
          ),
          actions: [],
          leading: CostumeIcon(Icons.notifications,
              ApplicationColors().textColor, SizeConfig().fontSize17),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig().blockSizeHorizontal * 6),
                child: Center(
                  child: CommonTextControllers.customTextField(
                      labelText: ' ابحث برقم القطعه',
                      inHome: true,
                      height: SizeConfig().safeBlockVertical * 5,
                      width: SizeConfig().screenWidth * .6,
                      isObscureText: false,
                      keyboardType: TextInputType.number,
                      suffix: CostumeIcon(
                          FontAwesomeIcons.search,
                          ApplicationColors().textColor,
                          SizeConfig().fontSize15),
                      validator: (value) {
                        if (value.length < 11) {
                          return '';
                        } else {
                          return null;
                        }
                      },
                      onSubmitted: (trim) {}),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppUtils().createFilterDialog(
                                context, ref.districtLayout());

                            print('uuuuuuuu');
                          },
                          child: Row(
                            children: [
                              CostumeIcon(
                                  Icons.arrow_left_outlined,
                                  ApplicationColors().textColor,
                                  SizeConfig().fontSize17),
                              CostumeText(
                                text: ref.district,
                                fontSize: SizeConfig().fontSize15,
                                color: ApplicationColors().textColor,
                              ),
                            ],
                          ),
                        ),
                        VerticalSpace(
                          space: SizeConfig().blockSizeVertical * 16,
                        ),
                        Row(
                          children: [
                            CostumeText(
                              text: 'الحي',
                              color: ApplicationColors().textColor,
                              fontSize: SizeConfig().fontSize16,
                            ),
                            Image.asset(
                              'images/kaap.png',
                              width: SizeConfig().blockSizeVertical * 6,
                              height: SizeConfig().blockSizeVertical * 3,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              CostumeIcon(
                                  Icons.arrow_left_outlined,
                                  ApplicationColors().textColor,
                                  SizeConfig().fontSize17),
                              GestureDetector(
                                onTap: () {
                                  AppUtils().createFilterDialog(
                                      context, ref.regionAlertLayout());
                                },
                                child: CostumeText(
                                  text: ref.region,
                                  fontSize: SizeConfig().fontSize15,
                                  color: ApplicationColors().textColor,
                                ),
                              ),
                            ],
                          ),
                          VerticalSpace(
                            space: SizeConfig().blockSizeVertical * 13,
                          ),
                          Row(
                            children: [
                              CostumeText(
                                text: 'المنطقه',
                                color: ApplicationColors().textColor,
                                fontSize: SizeConfig().fontSize16,
                              ),
                              Image.asset(
                                'images/place.png',
                                width: SizeConfig().blockSizeVertical * 6,
                                height: SizeConfig().blockSizeVertical * 3,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig().blockSizeHorizontal * 7,
                                top: 7,
                                bottom: 7),
                            child: CommonTextControllers.customTextField(
                                labelText: ' 600',
                                inTam: true,
                                width: SizeConfig().screenWidth * .4,
                                isObscureText: false,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.length < 11) {
                                    return 'من فضلك أدخل رقم هاتف صحيح';
                                  } else {
                                    return null;
                                  }
                                },
                                onSubmitted: (trim) {}),
                          ),
                          VerticalSpace(
                            space: SizeConfig().blockSizeVertical * 6,
                          ),
                          Row(
                            children: [
                              CostumeText(
                                text: 'رقم الحي',
                                color: ApplicationColors().textColor,
                                fontSize: SizeConfig().fontSize16,
                              ),
                              Image.asset(
                                'images/place.png',
                                width: SizeConfig().blockSizeVertical * 6,
                                height: SizeConfig().blockSizeVertical * 3,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppUtils().createFilterDialog(
                                context, ref.stepAlertLayout());

                            print('uuuuuuuu');
                          },
                          child: Row(
                            children: [
                              CostumeIcon(
                                  Icons.arrow_left_outlined,
                                  ApplicationColors().textColor,
                                  SizeConfig().fontSize17),
                              CostumeText(
                                text: ref.step,
                                fontSize: SizeConfig().fontSize15,
                                color: ApplicationColors().textColor,
                              ),
                            ],
                          ),
                        ),
                        VerticalSpace(
                          space: SizeConfig().blockSizeVertical * 13,
                        ),
                        Row(
                          children: [
                            CostumeText(
                              text: 'المرحله',
                              color: ApplicationColors().textColor,
                              fontSize: SizeConfig().fontSize16,
                            ),
                            Image.asset(
                              'images/real-estate.png',
                              width: SizeConfig().blockSizeVertical * 6,
                              height: SizeConfig().blockSizeVertical * 3,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig().blockSizeHorizontal * 7,
                                top: 7,
                                bottom: 7),
                            child: CommonTextControllers.customTextField(
                                inTam: true,
                                width: SizeConfig().screenWidth * .4,
                                isObscureText: false,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.length < 11) {
                                    return 'من فضلك أدخل رقم هاتف صحيح';
                                  } else {
                                    return null;
                                  }
                                },
                                onSubmitted: (trim) {}),
                          ),
                          VerticalSpace(
                            space: SizeConfig().blockSizeVertical * 8,
                          ),
                          Row(
                            children: [
                              CostumeText(
                                text: 'المقدم',
                                color: ApplicationColors().textColor,
                                fontSize: SizeConfig().fontSize16,
                              ),
                              Image.asset(
                                'images/money.png',
                                width: SizeConfig().blockSizeVertical * 6,
                                height: SizeConfig().blockSizeVertical * 3,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeHorizontal * 5),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig().blockSizeHorizontal * 7,
                                top: 7,
                                bottom: 7),
                            child: CommonTextControllers.customTextField(
                                inTam: true,
                                width: SizeConfig().screenWidth * .4,
                                isObscureText: false,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.length < 11) {
                                    return 'من فضلك أدخل رقم هاتف صحيح';
                                  } else {
                                    return null;
                                  }
                                },
                                onSubmitted: (trim) {}),
                          ),
                          VerticalSpace(
                            space: SizeConfig().blockSizeVertical * 7,
                          ),
                          Row(
                            children: [
                              CostumeText(
                                text: 'الإجمالي',
                                color: ApplicationColors().textColor,
                                fontSize: SizeConfig().fontSize16,
                              ),
                              Image.asset(
                                'images/money.png',
                                width: SizeConfig().blockSizeVertical * 6,
                                height: SizeConfig().blockSizeVertical * 3,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig().blockSizeHorizontal * 2),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      CostumeText(
                                        text: 'متر مربع',
                                        fontSize: SizeConfig().fontSize15,
                                        color: ApplicationColors().textColor,
                                      ),
                                      CostumeText(
                                        text: '${ref.selected.start}' +
                                            '-' +
                                            '${ref.selected.start}',
                                        fontSize: SizeConfig().fontSize14,
                                        color: ApplicationColors().textColor,
                                      ),
                                    ],
                                  ),
                                  VerticalSpace(
                                    space: SizeConfig().blockSizeVertical * 19,
                                  ),
                                  Row(
                                    children: [
                                      CostumeText(
                                        text: 'المساحه',
                                        color: ApplicationColors().textColor,
                                        fontSize: SizeConfig().fontSize15,
                                      ),
                                      Image.asset(
                                        'images/plan.png',
                                        width:
                                            SizeConfig().blockSizeVertical * 4,
                                        height:
                                            SizeConfig().blockSizeVertical * 3,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: RangeSlider(
                          max: ref.sliderValueMax,
                          min: ref.sliderValueMin,
                          activeColor: Colors.brown,
                          inactiveColor: Colors.grey,
                          values: ref.selected,
                          onChanged: (RangeValues value) {
                            ref.updateSlider(values: value);
                          },
                          divisions: 5,
                          labels: RangeLabels(
                            ref.selected.start.round().toString(),
                            ref.selected.end.round().toString(),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: SizeConfig().blockSizeHorizontal * 5,
                    top: SizeConfig().blockSizeHorizontal * 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CostumeText(
                          text: 'التميز',
                          color: ApplicationColors().textColor,
                          fontSize: SizeConfig().fontSize16,
                        ),
                        Image.asset(
                          'images/premium.png',
                          width: SizeConfig().blockSizeVertical * 6,
                          height: SizeConfig().blockSizeVertical * 3,
                        )
                      ],
                    ),
                    ref.createList(ref.premiumList)
                  ],
                ),
              ),
              Container(
                height: 1,
                width: SizeConfig().screenWidth * .8,
                color: ApplicationColors().textColor,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig().blockSizeVertical * 20),
                child: CheckboxListTile(
                  activeColor: ApplicationColors().textColor,
                  title: CostumeText(
                    text: 'المعروض للبيع',
                    fontSize: SizeConfig().fontSize15,
                    color: ApplicationColors().textColor,
                  ),
                  value: ref.isRemember,
                  onChanged: (newValue) {
                    ref.toggleRememberMe(newValue);
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Container(
                    width: SizeConfig().blockSizeVertical * 40,
                    height: SizeConfig().blockSizeVertical * 6,
                    decoration: BoxDecoration(
                        color: ApplicationColors().textColor,
                        border: Border.all(
                          color: ApplicationColors().textColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(
                            SizeConfig().blockSizeVertical * 25))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: CostumeText(
                            text: 'بحث',
                            color: Colors.white,
                            fontSize: SizeConfig().fontSize15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
