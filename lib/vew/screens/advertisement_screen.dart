import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/widgets/ad_widgat.dart';
import 'package:bait_watan/vew/widgets/custome_text.dart';
import 'package:bait_watan/vew/widgets/my_add_widget.dart';
import 'package:bait_watan/vew/widgets/ps_dimens.dart';
import 'package:flutter/material.dart';

class AdvertisementScreen extends StatefulWidget {
  @override
  _AdvertisementScreenState createState() => _AdvertisementScreenState();
}

class _AdvertisementScreenState extends State<AdvertisementScreen> {
  @override
  List<Widget> screens = [MyAdWidgat(), AdWidgat()];

  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: TitleAppBar(),
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: ApplicationColors().textColor,
                ),
                actions: [Add_ad()],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(PsDimens.space40),
                        bottomLeft: Radius.circular(PsDimens.space40))),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(PsDimens.space44),
                    child: TabBarr()
                )),
            body: Container(
                margin: EdgeInsets.only(top: PsDimens.space2),
                child: TabBarView(children: screens))));
  }

  Widget Add_ad() {
    return InkWell(
        onTap: null,
        child: Container(
            margin: EdgeInsets.only(top: 12, right: 10, bottom: 12),
            padding: EdgeInsets.all(6),
            width: PsDimens.space80,
            child: CostumeText(
              text: "اضافه اعلانات  +",
              fontSize: PsDimens.space10,
              color: ApplicationColors().textColor,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: ApplicationColors().textColor),
                borderRadius: BorderRadius.circular(20.0))));
  }

  Widget TitleAppBar() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,  mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_drop_down_outlined,
              size: PsDimens.space16, color: ApplicationColors().textColor),
          CostumeText(
            text: 'اختر المدينه',
            fontSize: PsDimens.space16,
            color: ApplicationColors().textColor,
          )
        ],
      ),
    );
  }

  Widget TabBarr(){
    return  TabBar(
      unselectedLabelColor: Colors.black45,
      labelColor: Colors.black,
      indicatorColor: Colors.black45,indicatorWeight:2,

      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: PsDimens.space1),
          insets: EdgeInsets.symmetric(horizontal:PsDimens.space72)
      ),
      tabs: [
        Tab(
          child: CostumeText(
            text: 'اعلاناتي',
            fontSize: PsDimens.space18,
          ),
        ),
        Tab(
          child: CostumeText(
            text: 'اعلانات',
            fontSize: PsDimens.space18,
          ),
        )
      ],
    );
  }
}
