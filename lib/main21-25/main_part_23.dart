import 'dart:async';

import 'package:flutter/material.dart';

class MainPart23 extends StatefulWidget {
  @override
  _MainPart23State createState() => _MainPart23State();
}

class _MainPart23State extends State<MainPart23> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                  color: (isBlack) ? Colors.black : Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text('Ubah warna 5 detik kemudian'),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Timer.run(() {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text('Ubah warna secara langsung'),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                counter = 0;
                isStop = false;
                Timer.periodic(Duration(seconds: 1), (timer) {
                  if (isStop) {
                    timer.cancel();
                  } else {
                    setState(() {
                      counter++;
                    });
                  }
                });
              },
              child: Text('Start Timer'),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                isStop = true;
              },
              child: Text('Stop Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
