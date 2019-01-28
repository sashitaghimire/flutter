import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  final String logo = "assets/profile.png";
  final String background = "assets/profile_back.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar: AppBar(
        title: Text('Profile',),
         backgroundColor:(Colors.blueGrey)
         
      ),body: Container(
        
   
     height: double.infinity,
  
      decoration: BoxDecoration(
  
        image: DecorationImage(
   
         image: AssetImage(background,),
            fit: BoxFit.cover
          )
        ),
     
    child: SingleChildScrollView(
          padding: EdgeInsets.all(130.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0,),
              Image.asset(logo, height: 100,),
              
              SizedBox(height: 30.0,),
            ]
      )

    
    )
      ),
    );
  }
}

 