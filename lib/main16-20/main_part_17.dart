import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: Text(
          'AppBar Example',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage('assets/images/pattern.png'),
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Text(
          'AppBar Gradasi dengan Corak\n(AppBar, IconButton, Icon)',
          style: titleTextStyle,
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
