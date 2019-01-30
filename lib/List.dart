import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{
  @override
  State<ListPage> createState() {
    return new ListState();
  }
}

class ListState extends State<ListPage>{
  List<String> Names = [
    'Sashita','Ishwor','Robert','Shyam',
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("List of Users "),
      ),
      body: new Container(
        child: new ListView.builder(
          
            itemBuilder: (_,int index)=>EachList(this.Names[index]),
            itemCount: this.Names.length,
        ),
      ),
    );
  }
}
class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(backgroundImage:AssetImage("assets/avatar.png"),radius:30,),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(name,style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

}