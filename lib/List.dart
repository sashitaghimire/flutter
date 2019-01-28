import 'package:flutter/material.dart';
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("List"),
         backgroundColor:(Colors.blueGrey)
         
      ),
  body:Container(
   child:Card(
   Text("Jane Doe",textAlign:TextAlign.right,style:TextStyle(fontSize:30),),
   ),
      width: 100.0,
      height: 100.0,
   
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
          fit: BoxFit.fill,
          
          image:AssetImage(
                 "assets/avatar.png",),
                
                 
                  
                 )
                
                 
),



  
  
      
    ),
    );
  }
}