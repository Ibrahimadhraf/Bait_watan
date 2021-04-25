import 'package:bait_watan/model/add_model.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/ps_dimens.dart';
import 'package:bait_watan/vew/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAdWidgat extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [firstRowInColum(), Roww(0, 1, 2, 3),sconedWidgat(),thirdRowColum()],
            ),
          );
        });
  }

  Widget Roww(
      int firstIndex, int sconedIndex, int treedIndex, int fourthIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        items(
            iconData: _list()[firstIndex].iconData,
            iconColor: _list()[firstIndex].iconColor,
            backGroungColor: _list()[firstIndex].backGroungColor,
            titleTxt: _list()[firstIndex].titleTxt,
            subTitle: _list()[firstIndex].subTitle),
        items(
            iconData: _list()[sconedIndex].iconData,
            iconColor: _list()[sconedIndex].iconColor,
            backGroungColor: _list()[sconedIndex].backGroungColor,
            titleTxt: _list()[sconedIndex].titleTxt,
            subTitle: _list()[sconedIndex].subTitle),
        items(
            iconData: _list()[treedIndex].iconData,
            iconColor: _list()[treedIndex].iconColor,
            backGroungColor: _list()[treedIndex].backGroungColor,
            titleTxt: _list()[treedIndex].titleTxt,
            subTitle: _list()[treedIndex].subTitle),
        items(
            iconData: _list()[fourthIndex].iconData,
            iconColor: _list()[fourthIndex].iconColor,
            backGroungColor: _list()[fourthIndex].backGroungColor,
            titleTxt: _list()[fourthIndex].titleTxt,
            subTitle: _list()[fourthIndex].subTitle),
      ],
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

  Widget firstRowInColum() {
    return Container(
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
                  Container(
                      margin: EdgeInsets.only(
                          left: PsDimens.space10, right: PsDimens.space10),
                      child: Icon(
                        FontAwesomeIcons.edit,
                        color: Colors.white,
                        size: PsDimens.space20,
                      )),
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
      ),
    );
  }
}

Widget sconedWidgat(){
  return Padding(padding: EdgeInsets.only(top:PsDimens.space14,right: PsDimens.space20),child:CostumeText(text: 'الوصف',color: ApplicationColors().textColor,fontSize: PsDimens.space16,));
}
Widget thirdRowColum(){
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,children: [
    Container(margin: EdgeInsets.all(PsDimens.space14),height:PsDimens.space32,width:PsDimens.space92 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(PsDimens.space120),color:ApplicationColors().textColor),
      child: Center(child:CostumeText(text: 'اعاده نشر',color: Colors.white,fontSize: PsDimens.space16,)),),
    Padding(padding: EdgeInsets.all(PsDimens.space6),child:Container(width: PsDimens.space240,height: PsDimens.space68,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ApplicationColors().MyAdBackGroungText)
      ,child:Container(margin: EdgeInsets.only(right: PsDimens.space6,left: PsDimens.space6),child:Text('حازم محمد ',textAlign:TextAlign.right,maxLines: 6,style: adWidgetStyle,)),)),
  ],);
}
List<AdModel> _list() {
  List<AdModel> listt = [];
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
  return listt;
}