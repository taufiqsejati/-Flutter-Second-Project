import 'package:flutter/material.dart';

class MainPart9 extends StatefulWidget {
  @override
  _MainPart9State createState() => _MainPart9State();
}

class _MainPart9State extends State<MainPart9> {
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 20;
                        });
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  )),
                  Flexible(
                      child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.green,
                    ),
                  )),
                ],
              )),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.blue,
                    ),
                  )),
                  Flexible(
                      child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.yellow,
                    ),
                  )),
                ],
              ))
        ],
      ),
    );
  }
}
