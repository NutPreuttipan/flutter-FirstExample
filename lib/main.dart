import 'package:flutter/material.dart';
import 'package:flutter_login/list_page_modern.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ListPage.tag: (context) => ListPage(),
    ListPageModern.tag: (context) => ListPageModern(),
  };

  @override
  Widget build(BuildContext context) {

    return MaterialApp (
      title: 'LoginApp', 
      debugShowCheckedModeBanner: false, 
      theme: new ThemeData ( 
        primaryColor: Color.fromRGBO(58, 66, 86 , 1.0), 
        // primarySwatch: , ##use for material color
        fontFamily: 'Nunito',
      ), 
      home: ListPageModern(),
      routes: routes,
    );
  }
}


