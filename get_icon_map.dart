import 'package:flutter/material.dart';

class GetIconMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        Icon(Icons.location_on, size: 34,),
        Text("Search", style: TextStyle(fontSize: 14)),
        
      ],
    );
  }
}
