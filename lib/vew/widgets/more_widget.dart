import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/ps_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(width: PsDimens.space10,),
      coustomeMoreView(context: context,icon:FontAwesome5Solid.user_cog,nams: "الحساب",backIcon:Icons.arrow_back_ios)
      ,  Divider(color: Colors.black),
      coustomeMoreView(context: context,icon:FontAwesomeIcons.balanceScale,nams: "المقارنه",backIcon:Icons.arrow_back_ios),
      Divider(color: Colors.black),
      coustomeMoreView(context: context,icon:FontAwesome5Solid.clock,nams: "تتبع الاعلانات",backIcon:Icons.arrow_back_ios),
      Divider(color: Colors.black),
      coustomeMoreView(context: context,icon:FontAwesome5Solid.headphones,nams: "تواصل معانا",backIcon:Icons.arrow_back_ios),
      Divider(color: Colors.black),
      coustomeMoreView(context: context,icon:FontAwesome5Solid.sign_out_alt,nams: "تسجيل خروج"),
    ],);
  }

  Widget coustomeMoreView({BuildContext context,IconData icon,String nams,IconData backIcon}){
    return Container(width: MediaQuery.of(context).size.width,height:PsDimens.space40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
        Icon(backIcon,size: PsDimens.space16,color: ApplicationColors().textColor),
        SizedBox(width: PsDimens.space120,),
        Row(children: [
          SizedBox(height: 10,),
          CostumeMoreText(text: nams),
          SizedBox(width: PsDimens.space24,),
          Icon(icon,size: PsDimens.space16,color: ApplicationColors().textColor),
        ],),
      ],),
    );
  }
}