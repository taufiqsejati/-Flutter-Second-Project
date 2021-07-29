import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';
import 'package:flutter_application_1/custom_colors.dart';

class MainPart1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Casssy'),
        backgroundColor: darkBlue,
        actions: [IconButton(icon: Icon(Icons.mail), onPressed: () {})],
      ),
      body: SafeArea(
          child: Container(
              // color: Colors.indigo,
              margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
              padding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/trump.jpeg'),
                        height: 200,
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                          child: Text(
                            'Rich Together',
                            style: mainHeader,
                          )),
                      Text(
                        'Save your money little bit and we \nwill help to be rich.',
                        style: subHeader,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
