import 'package:bait_watan/model/add_model.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/ps_dimens.dart';
import 'package:bait_watan/vew/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdWidgat extends StatefulWidget {
  @override
  _AdWidgatState createState() => _AdWidgatState();
}

class _AdWidgatState extends State<AdWidgat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
                top: PsDimens.space6,
                left: PsDimens.space6,
                right: PsDimens.space6),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(12)),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                firstRowInColum(),
                secondRowInColum(),
                Dividerr(context),
                Dividerr(context),
                fourthRowWidgat(),
                Dividerr(context),
                fifthRowWidgat(),
                Dividerr(context),
                sixthWidgat()
              ],
            ),
          );
        });
  }
}

Widget firstRowInColum() {
  return Stack(
    children: [
      Container(
          decoration: BoxDecoration(
              color: ApplicationColors().textColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(PsDimens.space12),
                  topLeft: Radius.circular(PsDimens.space12))),
          height: PsDimens.space52,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: PsDimens.space10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FlutterIcons.md_heart_empty_ion,
                          color: Colors.white),
                      Container(
                          margin: EdgeInsets.only(
                              left: PsDimens.space10, right: PsDimens.space10),
                          child: Icon(
                            FontAwesomeIcons.home,
                            color: Colors.white,
                          )),
                      Icon(
                        FlutterIcons.ios_clock_ion,
                        color: Colors.white,
                      ),
                      //              FlutterIcons.heart_faw
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: CostumeText(
                      fontSize: PsDimens.space18,
                      text: 'عنوان الاعلان',
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(right: PsDimens.space20),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: PsDimens.space10),
                      child: CostumeText(
                        fontSize: PsDimens.space12,
                        text: 'تاريخ الاعلان',
                        color: ApplicationColors().gray,
                      )),
                ],
              )
            ],
          )),
      Add_ad()
    ],
  );
}

Widget secondRowInColum() {
  return Container(
      margin: EdgeInsets.only(right: PsDimens.space6, left: PsDimens.space6),
      child: Text(
        'صينبيةنضصمثبةنمضصبنصثةنمبةثصنبةصثنمةبمنثصةبنثصةبنمثصةمنبثةص'
        'ثبنصثبنمةثصمنبةنمثصةبنم',
        textAlign: TextAlign.right,
        maxLines: 3,
        style: adWidgetStyle,
      ));
}

Widget thirdRowColum(ApplicationColors colors) {
  return Roww(0, 1, 2);
}

Widget fourthRowWidgat() {
  return Roww(3, 4, 5);
}

Widget fifthRowWidgat() {
  return Roww(6, 7, 8);
}

Widget sixthWidgat() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        margin: EdgeInsets.all(PsDimens.space14),
        height: PsDimens.space32,
        width: PsDimens.space80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(PsDimens.space120),
            color: ApplicationColors().textColor),
        child: Center(
            child: CostumeText(
          text: 'تفاصيل',
          color: Colors.white,
          fontSize: PsDimens.space18,
        )),
      ),
      SizedBox(
        width: PsDimens.space40,
      ),
      CostumeText(
        text: "اسم صاحب الاعلان",
        fontSize: PsDimens.space14,
        color: ApplicationColors().textColor,
      ),
      Container(
        margin: EdgeInsets.all(PsDimens.space10),
        height: PsDimens.space32,
        width: PsDimens.space40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(700), color: Colors.black45),
        child: Center(child: Text('Log')),
      ),
    ],
  );
}

Widget Add_ad() {
  return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(top: PsDimens.space40, left: 10),
      width: PsDimens.space60,
      height: PsDimens.space18,
      child: Center(
          child: CostumeText(
        text: 'معروض للبيع',
        fontSize: PsDimens.space10,
        color: ApplicationColors().textColor,
      )),
      decoration: BoxDecoration(
          color: ApplicationColors().od_screen,
          borderRadius: BorderRadius.circular(20.0)));
}

Widget Dividerr(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.0),
    child: Container(
        height: 1.0,
        width: MediaQuery.of(context).size.width,
        color: ApplicationColors().textColor),
  );
}

Widget items(
    {Color backGroungColor,
    Color iconColor,
    IconData iconData,
    String titleTxt,
    String subTitle}) {
  return Column(
    children: [
      MaterialButton(
        onPressed: () {},
        color: backGroungColor,
        textColor: iconColor,
        height: PsDimens.space12,
        child: Icon(iconData, size: PsDimens.space12),
        padding: EdgeInsets.all(PsDimens.space6),
        shape: CircleBorder(),
      ),
      Text(
        titleTxt,
        style: adColumTitleWidgetStyle,
      ),
      Text(subTitle, style: adColumsabTitleWidgetStyle),
    ],
  );
}

Widget Roww(int firstindex, int sconedinex, int treedinex) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      items(
          iconData: _list()[firstindex].iconData,
          iconColor: _list()[firstindex].iconColor,
          backGroungColor: _list()[firstindex].backGroungColor,
          titleTxt: _list()[firstindex].titleTxt,
          subTitle: _list()[firstindex].subTitle),
      items(
          iconData: _list()[sconedinex].iconData,
          iconColor: _list()[sconedinex].iconColor,
          backGroungColor: _list()[sconedinex].backGroungColor,
          titleTxt: _list()[sconedinex].titleTxt,
          subTitle: _list()[sconedinex].subTitle),
      items(
          iconData: _list()[treedinex].iconData,
          iconColor: _list()[treedinex].iconColor,
          backGroungColor: _list()[treedinex].backGroungColor,
          titleTxt: _list()[treedinex].titleTxt,
          subTitle: _list()[treedinex].subTitle),
    ],
  );
}

List<AdModel> _list() {
  List<AdModel> listt = [];
  listt.add(AdModel(
      iconData: FontAwesome5Solid.building,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "رقم القطعه",
      subTitle: "606"));
  listt.add(AdModel(
      iconData: Icons.place,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "المنطقه",
      subTitle: "الرابعه"));
  listt.add(AdModel(
      iconData: Icons.house,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "الحي",
      subTitle: "الاول"));
  listt.add(AdModel(
      iconData: FontAwesome.money,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "المطلوب",
      subTitle: '${"١٠٠٠٠٠"}${"ج.م"}'));
  listt.add(AdModel(
      iconData: FontAwesome.money,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "الاوفر",
      subTitle: '${"١٠٠٠٠٠"}${"ج.م"}'));
  listt.add(AdModel(
      iconData: FontAwesome.money,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "المدفوع",
      subTitle: '${"١٠٠٠٠٠"}${"ج.م"}'));
  listt.add(AdModel(
      iconData: FontAwesome.money,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "الاجمالي",
      subTitle: '١٠٠٠٠٠ ج.م'));
  listt.add(AdModel(
      iconData: Icons.add_to_photos_rounded,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "المرحله",
      subTitle: 'الثانيه'));
  listt.add(AdModel(
      iconData: FontAwesomeIcons.searchLocation,
      iconColor: ApplicationColors().textColor,
      backGroungColor: ApplicationColors().ad_icon_background,
      titleTxt: "المساحه",
      subTitle: "300متر مربع"));
  return listt;
}
