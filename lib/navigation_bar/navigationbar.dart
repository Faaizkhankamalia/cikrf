import 'package:cikrf/CARTES%20JAYAANTE/calculator.dart';
import 'package:cikrf/setting.dart';
import 'package:flutter/material.dart';

import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';

import '../Jayaante.dart';
import '../home_page/home_page.dart';




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  final List<Widget> _pages = [
    Home_Page(),
    Calculate(),
    Jayaante(),
    Setting(),

  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }

    return Scaffold(

      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 0.0,
        //shadowAllowance: 10.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: Colors.orangeAccent,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.white,
        barBackgroundColor:Color(0xFFF105082),
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: Icons.home,
      iconSize: 25.0,
    ),
    TabData(

      icon: Icons.calculate_outlined,
      iconSize: 25,),
    TabData(
      icon: Icons.phone_android,
      iconSize: 25,),
    TabData(
      icon: Icons.settings,
      iconSize: 25,
 ),
  ];
}
