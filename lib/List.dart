import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Users"),
         backgroundColor:(Colors.blueGrey),
      ),
      body: Container(

          child: _list1(context),

        // child: ListView.builder(
        //   itemBuilder: (_,int index)=>Eachlist(),
        //   itemCount: 5,
        // ),
        

      )
    );
  }
}
// class Eachlist extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           children: <Widget>[
//             CircleAvatar( backgroundImage: AssetImage("assets/ishwor.jpg"),radius: ,),
//             Padding(padding: EdgeInsets.only(right: 10.0),),
//             Text("Ishwor",style: TextStyle(fontSize: 20.0),)

//           ],
//         ),
//       )

      
//     );
//   }
// }

  
  Widget _list1(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20),
        itemExtent: 100,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/avatar.png"),),
            title: Text("Sashita",style: TextStyle(fontSize: 20),), 
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/img1.jpg"),),
            title: Text("Ishwor",style: TextStyle(fontSize: 20),),
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/img2.png"),),
            title: Text("Satyam",style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }