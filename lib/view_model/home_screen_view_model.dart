import 'package:bait_watan/model/premium_model.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenViewModel extends GetxController {
  ValueNotifier<String> _cityChoice = ValueNotifier('إختر المدينة');
  ValueNotifier<String> _regionChoice = ValueNotifier('لم يتم الإختيار');
  ValueNotifier<String> _stepChoice = ValueNotifier('لم يتم الإختيار');
  ValueNotifier<String> _districtStep = ValueNotifier('لم يتم الإختيار');
  ValueNotifier<double> _sliderValue = ValueNotifier(0);
  ValueNotifier<Color>_notifierColor=ValueNotifier(Colors.white);
  ValueNotifier<List<PremiumModel>>_premiumList=ValueNotifier([
    PremiumModel(item: 'حديقه' ,isClicked: false ),
    PremiumModel(item:  'ناصيه', isClicked: false ),
    PremiumModel(item: 'اتجاه بحري' ,isClicked: false ),
    PremiumModel(item: 'شارع رئيسي' ,isClicked: false ),


  ]);
  ValueNotifier<bool> _isRemembered = ValueNotifier(false);

  bool get isRemember=>_isRemembered.value;
  List<PremiumModel> get premiumList=>_premiumList.value;
  double get sliderValue=>_sliderValue.value;
  String get city => _cityChoice.value;
  String get region => _regionChoice.value;
  String get step => _stepChoice.value;
  String get district => _districtStep.value;
  Color get selectedColor=>_notifierColor.value;
  void selectCity(String city) {
    _cityChoice.value = city;
    update();
  }
  void selectRegion(String region) {
    _regionChoice.value= region;
    update();
  }
  void selectStep(String step) {
    _stepChoice.value= step;
    update();
  }
  void selectDistrict(String destrict) {
    _districtStep.value= destrict;
    update();
  }
  void updateSlider(  double value) {
    _sliderValue.value=value.roundToDouble();
    update();
  }
  void toggleRememberMe(bool flag){
    _isRemembered.value=flag;
    update();
  }
  Widget cityAlertLayout() {
    return Container(
      width: SizeConfig().blockSizeHorizontal * 30,
      height: SizeConfig().blockSizeHorizontal * 30,
      child: Container(
        width: SizeConfig().blockSizeHorizontal * 25,
        height: SizeConfig().blockSizeHorizontal * 25,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig().safeBlockVertical * 1.2,
                      horizontal: SizeConfig().safeBlockVertical * 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ApplicationColors().textColor,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: Colors.white,
                  ),

                  child: GestureDetector(
                    onTap: (){
                      selectCity('test');
                      Navigator.pop(context);
                    },
                      child: Center(
                          child: CostumeText(
                    text: 'test',
                    color: ApplicationColors().textColor,
                  ))));
            }),
      ),
    );
  }

  Widget regionAlertLayout() {
    return Container(
      width: SizeConfig().blockSizeHorizontal * 30,
      height: SizeConfig().blockSizeHorizontal * 30,
      child: Container(
        width: SizeConfig().blockSizeHorizontal * 25,
        height: SizeConfig().blockSizeHorizontal * 25,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig().safeBlockVertical * 1.2,
                      horizontal: SizeConfig().safeBlockVertical * 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ApplicationColors().textColor,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: Colors.white,
                  ),

                  child: GestureDetector(
                      onTap: (){
                        selectRegion('test');
                        Navigator.pop(context);
                      },
                      child: Center(
                          child: CostumeText(
                            text: 'test',
                            color: ApplicationColors().textColor,
                          ))));
            }),
      ),
    );
  }
  Widget stepAlertLayout() {
    return Container(
      width: SizeConfig().blockSizeHorizontal * 30,
      height: SizeConfig().blockSizeHorizontal * 30,
      child: Container(
        width: SizeConfig().blockSizeHorizontal * 25,
        height: SizeConfig().blockSizeHorizontal * 25,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig().safeBlockVertical * 1.2,
                      horizontal: SizeConfig().safeBlockVertical * 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ApplicationColors().textColor,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: Colors.white,
                  ),

                  child: GestureDetector(
                      onTap: (){
                        selectStep('test');
                        Navigator.pop(context);
                      },
                      child: Center(
                          child: CostumeText(
                            text: 'test',
                            color: ApplicationColors().textColor,
                          ))));
            }),
      ),
    );
  }
  Widget districtLayout() {
    return Container(
      width: SizeConfig().blockSizeHorizontal * 30,
      height: SizeConfig().blockSizeHorizontal * 30,
      child: Container(
        width: SizeConfig().blockSizeHorizontal * 25,
        height: SizeConfig().blockSizeHorizontal * 25,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig().safeBlockVertical * 1.2,
                      horizontal: SizeConfig().safeBlockVertical * 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ApplicationColors().textColor,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: Colors.white,
                  ),

                  child: GestureDetector(
                      onTap: (){
                        selectDistrict('test');
                        Navigator.pop(context);
                      },
                      child: Center(
                          child: CostumeText(
                            text: 'test',
                            color: ApplicationColors().textColor,
                          ))));
            }),
      ),
    );
  }

  Widget createList(List<PremiumModel> prem ) {

    return Wrap(
        children: prem
            .map((i) => InkWell(
          onTap: (){

        // _notifierColor.value=ApplicationColors().textColor;
        // update();
          },
              child: Container(
          margin: EdgeInsets.all( 5),
          width: SizeConfig().blockSizeHorizontal * 25,
          height: SizeConfig().safeBlockVertical * 5,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
                border: Border.all(color: selectedColor ),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //                 <--- border radius here
              ),
          ),

              child: Center(
                child: Text(
                  i.item,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig().fontSize13,
                      color: ApplicationColors().textColor),
                ),
              ),
          ),
            ),
        )
            .toList());
  }

}
