
import 'package:bait_watan/vew/widgets/styles.dart';
import 'package:flutter/material.dart';

class CostumeText extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  @override


  CostumeText({this.color, this.text, this.fontSize});

  Widget build(BuildContext context) {
    return  Text(text ,style: TextStyle(
        color: color ,
        fontSize: fontSize
    ),);
  }
}
class CostumeMoreText extends StatelessWidget {
  final String text;
  @override
  CostumeMoreText({this.text});

  Widget build(BuildContext context) {
    return  Text(text ,style:MoreWidgetStyle,   maxLines: 3,);
  }
}
