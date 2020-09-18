import 'package:flutter/material.dart';

class GetIconProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.person,
          size: 34,
        ),
        Text("Profile", style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
