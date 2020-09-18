import 'package:flutter/material.dart';
import 'package:flutter_tiktok_ui/screen/pages/add_video_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/discover_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/inbox_page.dart';
import 'package:flutter_tiktok_ui/screen/pages/me_page.dart';

import 'BottomNavBarIcons/get_icon_camera.dart';
import 'BottomNavBarIcons/get_icon_home.dart';
import 'BottomNavBarIcons/get_icon_map.dart';
import 'BottomNavBarIcons/get_icon_notifications.dart';
import 'BottomNavBarIcons/get_icon_profile.dart';
import 'HomeScreen.dart';

class BottomBarX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.black,
        height: 60,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => HomeScreen()),
                );
              },
              child: GetIconHome(),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => DiscoverPage()),
                  );
                },
                child: GetIconMap()),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => AddVideoPage()),
                  );
                },
                child: GetIconCamera()),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => InboxPage()),
                );
              },
              child: GetIconNotifications(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => MePage()),
                );
              },
              child: GetIconProfile(),
            ),
          ],
        )));
  }
}
