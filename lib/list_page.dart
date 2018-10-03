import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  static String tag = 'list-page'; 
  

  @override
  Widget build(BuildContext context) {

    var items = ['ITEM1','ITEM2','ITEM3','ITEM4','ITEM5'];

    return MaterialApp(
      title: 'List Page',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("List Page"),
        // ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              subtitle: Text('Subtitle $index'),
              leading: CircleAvatar(
                radius: 44.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/dummy${index + 1}.jpg'),
               
              ),
            );
          },
        ),
      ),
    );

  //   final listViewData = Padding(
  //     padding: EdgeInsets.all(16.0),
  //     child: ListView(
  //       children: <Widget>[
  //         ListTile(
  //           leading: Icon(Icons.map),
  //           title: Text('Map'), 
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.photo_album),
  //           title: Text('Album'),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.phone),
  //           title: Text('Phone'),
  //         ),
  //       ],
  //     ),
  //   );

  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('List Page')
  //     ),
  //     body: listViewData,
  //   );

  // }
  }
}