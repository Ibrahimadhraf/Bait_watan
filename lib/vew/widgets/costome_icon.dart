
import 'package:flutter/material.dart';

class CostumeIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double iconSize;
  CostumeIcon(this.icon, this.color,this.iconSize);

  @override
  Widget build(BuildContext context) {
    return  IconButton(icon:Icon(icon), onPressed: (){} ,color: color, iconSize: iconSize,);
  }
}
