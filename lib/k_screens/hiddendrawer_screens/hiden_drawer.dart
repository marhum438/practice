import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/k_screens/hiddendrawer_screens/pages/home_page.dart';
import 'package:flutter_application_1/k_screens/hiddendrawer_screens/pages/setting.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';

import '../../utils/const.dart';

class Hiddendrawer extends StatefulWidget {
  const Hiddendrawer({super.key});

  @override
  State<Hiddendrawer> createState() => _HiddendrawerState();
}

class _HiddendrawerState extends State<Hiddendrawer> {
  List<ScreenHiddenDrawer> pages = [];
  final myfontstyle = TextStyle(fontSize: 15, color: MyColors.white);
  @override
  void initState() {
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              baseStyle: myfontstyle,
              name: "Home Screen",
              colorLineSelected: MyColors.white,
              selectedStyle: myfontstyle),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              baseStyle: myfontstyle,
              name: "Setting ",
              colorLineSelected: MyColors.white,
              selectedStyle: myfontstyle),
          SettingPage()),
          
          
        
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: MyColors.yellow,
      screens: pages,
      initPositionSelected: 0,
      slidePercent: 60,
      contentCornerRadius: 50,
      withShadow: true,
      leadingAppBar: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: CircleAvatar(
          radius: 20,
          foregroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV8ZLVPFoYR_fqP7XahB5swaQuXmEJ6jb2Nw&usqp=CAU"),
        ),
      ),
      tittleAppBar: Text(
        "Hi, Kash!",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
      ),
    );
  }
}
