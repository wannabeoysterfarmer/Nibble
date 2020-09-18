import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_ui/screen/pages/add_video_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/discover_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/home_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/inbox_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/me_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'BottomBar.dart';
import 'BottomNavBarIcons/get_icon_camera.dart';
import 'BottomNavBarIcons/get_icon_home.dart';
import 'BottomNavBarIcons/get_icon_map.dart';
import 'BottomNavBarIcons/get_icon_notifications.dart';
import 'BottomNavBarIcons/get_icon_profile.dart';
import 'pages/add_video_page.dart';
import 'pages/add_video_page.dart';
import 'pages/discover_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageController = 0;

  List<Widget> _pages = [HomePage(), DiscoverPage(), InboxPage(), MePage()];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          
          bottomNavigationBar: BottomBarX(),
          body: _pages[_pageController],
        );
      },
    );
  }
}
