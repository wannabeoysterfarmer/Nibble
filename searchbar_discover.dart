import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';

class SearchBarX extends StatelessWidget {
  final sizingInformation2;
  SearchBarX(this.sizingInformation2);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.grey,
            width: sizingInformation2.localWidgetSize.width * 0.80,
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
