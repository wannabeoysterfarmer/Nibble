import 'package:flutter/material.dart';

class GetIconNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        Icon(Icons.notifications, size: 34,),
        Text("Updates", style: TextStyle(fontSize: 14)),
        
      ],
    );
  }
}

