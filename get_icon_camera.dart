import 'package:flutter/material.dart';

class GetIconCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        Icon(Icons.camera, size: 34,),
        Text("Review", style: TextStyle(fontSize: 14)),
        
      ],
    );
  }
}


