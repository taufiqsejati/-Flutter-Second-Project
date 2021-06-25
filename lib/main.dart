import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
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
      ),
    );
  }
}
