import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:food/screen/bottom_navigation/bottom_home_screen.dart';
import 'package:food/screen/bottom_navigation/bottom_menu_screen.dart';
import 'package:food/screen/bottom_navigation/bottom_more_screen.dart';
import 'package:food/screen/bottom_navigation/bottom_offers_screen.dart';
import 'package:food/screen/bottom_navigation/bottom_profile_screen.dart';
import 'package:food/screen/moadel/bottom_navigation_screen.dart';
import 'package:food/utiils/size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class BottomNavigationBarMainScreen extends StatefulWidget {
  const BottomNavigationBarMainScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMainScreen> createState() =>
      _BottomNavigationBarMainScreenState();
}

class _BottomNavigationBarMainScreenState
    extends State<BottomNavigationBarMainScreen> {
  int _currentIndex = 2;
  List<BottomNavigationScreen> _bottomNavigationList = [
    BottomNavigationScreen(widget: BottomMenuScreen(), title: 'Menu'),
    BottomNavigationScreen(
        widget: BottomOffersScreen(), title: 'Latest Offers'),
    BottomNavigationScreen(
        widget: BottomHomeScreen(), title: 'Good morning Akila!'),
    BottomNavigationScreen(widget: BottomProfileScreen(), title: 'Profile'),
    BottomNavigationScreen(widget: BottomMoreScreen(), title: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          _bottomNavigationList.elementAt(_currentIndex).title,
          style: TextStyle(
              color: Color(0xFF4A4B4D), fontSize: SizeConfig.scaleTextFont(20)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF4A4B4D),
              )),
        ],
      ),
      body: _bottomNavigationList.elementAt(_currentIndex).widget,
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(Icons.grid_view_rounded,
              color: Color(0xFFFC6011), size: SizeConfig.scaleTextFont(40)),
          Icon(Icons.shopping_bag,
              color: Color(0xFFFC6011), size: SizeConfig.scaleTextFont(40)),
          Icon(Icons.home,
              color: Color(0xFFFC6011), size: SizeConfig.scaleTextFont(40)),
          Icon(Icons.person,
              color: Color(0xFFFC6011), size: SizeConfig.scaleTextFont(40)),
          Icon(Icons.read_more_rounded,
              color: Color(0xFFFC6011), size: SizeConfig.scaleTextFont(40)),
        ],
        inactiveIcons: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.grid_view_rounded),
              Text(AppLocalizations.of(context)!.menu_bottom),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined),
              Text(AppLocalizations.of(context)!.offers_bottom),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_outlined),
              Text(AppLocalizations.of(context)!.home_bottom),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text(AppLocalizations.of(context)!.profile_bottom),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.read_more_rounded),
              Text(AppLocalizations.of(context)!.more_bottom),
            ],
          ),
        ],
        color: Colors.white,
        height: 92,
        circleWidth: 80,
        initIndex: _currentIndex,
        onChanged: (int selected) {
          setState(() {
            _currentIndex = selected;
          });
        },
        // tabCurve: ,
        padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 10,
        tabCurve: Curves.easeOut,
      ),
    );
  }
}
