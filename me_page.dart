import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          appBar: AppBar(
           
            actions: <Widget>[
              Center(child: Text("Your Profile", textAlign: TextAlign.center, 
              style: TextStyle(fontWeight: FontWeight.bold)),),
              Container(width: MediaQuery.of(context).size.width * 0.34),
              Icon(Icons.more_vert)
            ],
          ),
          body: Container(
            child: Column(
              
              children: <Widget>[
                Container( 
                  margin: EdgeInsets.all(14),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  // design own sticker packs, can sell off them, then
                  // other users can purchase sticker packs from them and
                  // use them.
                  child: Icon(Icons.person, color: Colors.black, size: 38)
                ),
                
                SizedBox(height: 15,),
                Text("@choochoo_chen",style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text("Sign up",style: TextStyle(fontSize: 18),),
                )
              ],
            )
          ),
        );
      },
    );
  }
}
