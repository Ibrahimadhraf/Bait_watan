import 'package:flutter/material.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';
import 'package:bait_watan/vew/widgets/costome_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar:  AppBar(
        shadowColor: Colors.blue,
        elevation: 6.0,
        centerTitle: true,
        backgroundColor: ApplicationColors().primaryColor,
        toolbarHeight: SizeConfig().safeBlockVertical * 10,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: const Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        title: Center(child: Text('reports_screen')),
        actions: [


        ],
        leading: CostumeIcon(Icons.notifications, ApplicationColors().textColor, SizeConfig().fontSize17),
      ),
    );
  }
}
