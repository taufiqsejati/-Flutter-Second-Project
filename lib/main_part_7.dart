import 'dart:math';

import 'package:flutter/material.dart';

class MainPart7 extends StatefulWidget {
  @override
  _MainPart7State createState() => _MainPart7State();
}

class _MainPart7State extends State<MainPart7> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            duration: Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
