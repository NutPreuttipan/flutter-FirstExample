import 'package:flutter/material.dart';
import 'package:flutter_login/home_page.dart';
import 'package:flutter/foundation.dart';



class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}
 
class _LoginPageState extends State<LoginPage> {

  final textFieldEmail = TextEditingController();
  final textFieldPassword = TextEditingController();

  @override
  void dispose() {  
    super.dispose();
    textFieldEmail.dispose();
    textFieldPassword.dispose();
  }

  void showAlertBox() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Alert Dialog Title'),
          content: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          actions: <Widget>[
            new FlatButton (
              child: new Text("Cancle"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // new MaterialButton(
            //   child: Text('Accept',style: TextStyle(color: Colors.white)),
            //   color: Colors.lightBlueAccent,
            //   onPressed: () {
            //     Navigator.of(context).pushNamed(HomePage.tag);
            //   }, 
            // ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar (
        backgroundColor: Colors.transparent,
        radius: 120.0,
        child: Image.asset("assets/logo.png"),
      ),
    );

    final email = TextField(
      controller: textFieldEmail,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'example@domain.com', ##for textFormField
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      )
    );

    final password  = TextField(
      controller: textFieldPassword,
      autofocus: false,
      // initialValue: 'some password',  ##for textFormField
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0)
        )
      )
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      // child: Material(
        // borderRadius: BorderRadius.circular(30.0),
        // shadowColor: Colors.lightBlueAccent.shade100,
        // elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {

            // debugPrint('$textFieldEmail');
            // debugPrint('$textFieldPassword');

            if (textFieldEmail.text == '' && textFieldPassword.text == '') {
              Navigator.of(context).pushNamed(HomePage.tag);
            } else {
              showAlertBox();
            }
          },
          color: Colors.lightBlueAccent,
          child: Text('LOGIN', style: TextStyle(color: Colors.white)),
        // ),
      ),
    );

    final forgetLabel = FlatButton (
      child: Text('Forget Password', style: TextStyle(color: Colors.black54)), 
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 24.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgetLabel
          ],
        )
      ),
    );
  }
}

  