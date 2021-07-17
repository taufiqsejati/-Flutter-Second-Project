import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Card Widget',
          style: titleTextStyle.copyWith(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.video_call, 'Video'),
            buildCard(Icons.camera, 'Camera')
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                iconData,
                color: Colors.green,
                size: 30,
              )),
          Text(
            text,
            style: subTitleTextStyle,
          )
        ],
      ),
    );
  }
}
