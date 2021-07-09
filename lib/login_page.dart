import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
          child: RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              })),
    );
  }
}
