import 'package:flutter/material.dart';
import './List.dart';
import './Gallery.dart';
import './Profile.dart';
class HomePage extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor:(Colors.blueGrey)
      ),
     body: _buildBody(),
      drawer: Drawer(
        elevation: 5.0,
        child: _buildDrawer(context,
      ),
    ),
    );
  }

  Widget _buildBody() {
    return new Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Home Page ",style:TextStyle(fontSize:22.0,
          fontWeight: FontWeight.bold
          ),
          )
        
        ],
         
      ),
    );
  }


  Widget _buildDrawer(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey
          ),
          child: Text("Welcome to Home Page",textAlign:TextAlign.center,style:TextStyle(fontSize:30),),
        ),
        
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>HomePage()));
            
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text("Gallery"),
          onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>GalleryPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("List"),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>ListPage()));
          },
        ),
        
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>ProfilePage()));
          },
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
      ],
    );
  }
}