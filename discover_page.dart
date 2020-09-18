import 'package:carousel_slider/carousel_slider.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tiktok_ui/repository/data_repository.dart';
import 'package:flutter_tiktok_ui/screen/BottomNavBarIcons/get_icon_notifications.dart';
import 'package:flutter_tiktok_ui/screen/pages/searchbar_discover.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';

import '../BottomBar.dart';
import '../HomeScreen.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          bottomNavigationBar: BottomBarX(),
          body: SingleChildScrollView(
            child: Container(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                SearchBarX(sizingInformation),
                SizedBox(
                  height: 15,
                ),
                _buildCarouselSlider(sizingInformation),
                SizedBox(height: 15),
                _buildTrendHeading(sizingInformation,
                    title: "PkCricketFever",
                    range: "2.7b",
                    descrition: "Trending Hashtag"),
                SizedBox(
                  height: 10,
                ),
                _buildListView(),
                SizedBox(height: 20),
                _buildTrendHeading(sizingInformation,
                    title: "SportLover",
                    range: "13.7b",
                    descrition: "Trending Hashtag"),
                SizedBox(
                  height: 10,
                ),
                _buildListView(),
                SizedBox(height: 20),
                _buildTrendHeading(sizingInformation,
                    title: "myOutFit",
                    range: "7.7b",
                    descrition: "Trending Hashtag"),
                SizedBox(
                  height: 10,
                ),
                _buildListView(),
                SizedBox(height: 20),
              ],
            )),
          ),
        );
      },
    );
  }

  Container _buildListView() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.assetData.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.asset(FakeRepository.assetData[index]),
              ),
            );
          }),
    );
  }

  Container _buildTrendHeading(SizingInformation sizingInformation,
      {String title, String descrition, String range}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text(
              "#",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: sizingInformation.localWidgetSize.width * 0.80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(title),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(range)),
                    ],
                  ),
                ),
                Text(descrition),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildCarouselSlider(SizingInformation sizingInformation) {
    return Container(
      height: 150,
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 2.0,
          aspectRatio: 0.10,
          autoPlay: true,
          height: 150,
        ),
        items: FakeRepository.imageData.map((imageUlr) {
          return Image.network(
            imageUlr,
            fit: BoxFit.cover,
            width: sizingInformation.screenSize.width,
            loadingBuilder: (context, child, loading) {
              if (loading == null) return child;
              return Padding(
                padding: const EdgeInsets.all(60),
                child: FittedBox(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Container _buildSearchContainer(SizingInformation sizingInformation) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 45,
            color: Colors.grey,
            width: sizingInformation.localWidgetSize.width * 0.80,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(),
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            child: Icon(
              Icons.fastfood,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
