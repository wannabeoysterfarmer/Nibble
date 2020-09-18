import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);
    return Column(children: [
      Container(
        margin: EdgeInsets.only(top: 34),
      ),
      Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(width: MediaQuery.of(context).size.width * 0.036),
          Icon(
            Icons.person_pin,
            size: 30,
            color: Colors.white,
          ),
          Container(width: MediaQuery.of(context).size.width * 0.3),
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.people, size: 30),
          ),
          SizedBox(
            width: 14,
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.public, size: 30),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.chat,
                size: 30,
              )),
        ]),
      )
    ]);
  }
}
