import 'package:flutter/material.dart';
class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<Container>GalleryPhotos=List();
  var photo=[
    {"name":"MonkeyTemple","img":"01.png"},
    {"name":"Taleju Bhawani","img":"02.png"}
  ];
  _imglist()async{
    for(var i=0;i<photo.length;i++){
      final photos=photo[i];
      final String  img =photos["img"];
      GalleryPhotos.add(
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Card(
            child :Column(
              children: <Widget>[

                new Image.asset("assets/$img",height:200,width:400 ,fit:BoxFit.fill,) ,
                Padding(padding: EdgeInsets.all(5),),
                new Text(photos['name'],style:new TextStyle(fontSize:18.0),),
                IconButton(
                  
            color: Colors.redAccent,
          
            iconSize: 20.0,
            icon: Icon(Icons.favorite),
            onPressed: (){
              print("Icon button pressed");
            },
          ),         
          
              ],)
          ),
        
            
        ),
      );
    }
  }
  @override
  void initState(){
    _imglist();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Gallery",style:TextStyle(fontSize: 18,color:Colors.white),),
      backgroundColor:(Colors.blueGrey)
      ),
    body: GridView.count(
      crossAxisCount:1,
      children:GalleryPhotos,
    ),
    
      );
    
  }
}