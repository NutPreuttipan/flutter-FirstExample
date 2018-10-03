import 'package:flutter/material.dart';
import 'list_page.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  HomePageState createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: Padding(
       padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
       child: CircleAvatar(
         radius: 80.0,
         backgroundColor: Colors.white,
         backgroundImage: AssetImage('assets/logo.png'),
       )
      )
    );

    final welcom = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Welcome to Application', 
        style: TextStyle(fontSize: 28.0, color: Colors.white
        ),
      ),
    );

    final lorem = Expanded(
      flex: 1,
      // padding: EdgeInsets.all(8.0),
      child: new SingleChildScrollView(
        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", 
          style: TextStyle(fontSize: 16.0, color: Colors.white
          ),
        ),
      ),
    );

    final nextPageButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      // child: Material(
      //   borderRadius: BorderRadius.circular(30.0),
      //   shadowColor: Colors.lightBlueAccent.shade100,
      //   elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(ListPage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Next Page', style: TextStyle(color: Colors.white)),
        // ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ]),   
      ),
      child: Column(
        children: <Widget> [logo, welcom, lorem, nextPageButton]
      ),
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter Application'),
      // ),
      body: body
    );
  }
}