import 'package:flutter/material.dart';

class GetIconHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        Icon(Icons.home, size: 34,),
        Text("Home", style: TextStyle(fontSize: 14)),
        
      ],
    );
  }
}


 