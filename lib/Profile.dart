import 'package:flutter/material.dart';

  class ProfilePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Profile'),
        backgroundColor:(Colors.blueGrey)),
        body: Stack(
        children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width:400,
                  
                  child: Center(
                    child: Image.asset("assets/profile_back.jpg"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text
                      ('Sashita Ghimire',style:TextStyle(fontSize:40)),
                      
                    ),
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0, 
            
              // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:AssetImage("assets/sashi.jpg"),)
                ),
              ),
            )
          ],
        ),
      );
    }
  }