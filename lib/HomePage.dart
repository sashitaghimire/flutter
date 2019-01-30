import 'package:flutter/material.dart';
import './List.dart';
import './Gallery.dart';
import './Profile.dart';
import './LoginPage.dart';
class HomePage extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor:(Colors.blueGrey)
      ),
     body: _buildBody(BuildContext,context),
      drawer: Drawer(
        elevation: 5.0,
        child: _buildDrawer(context,
      ),
    ),
    );
  }

  Widget _buildBody(BuildContext,context) {
    return new Container(
      padding: EdgeInsets.all(100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: <Widget>[
          FlatButton(
            color: Colors.pinkAccent[100],
            child: Text("Gallery"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>GalleryPage()),
              );
            },
            
          ),  
          RaisedButton(
            child: Text("List"),
            color: Colors.greenAccent[200],
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ListPage()),
              );
            },
          ),
          MaterialButton(
            child: Text("Profile"),
            color: Colors.deepOrange[100],
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ProfilePage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Logout"),
            color: Colors.blueAccent[100],
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage()),
              );
            },
          ),
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
        ListTile(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>LoginPage()));
          },
          leading: Icon(Icons.arrow_back),
          title: Text("Logout"),
        ),
      ],
    );
  }
}