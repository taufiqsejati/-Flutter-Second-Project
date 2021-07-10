import 'package:flutter/material.dart';
import 'dart:math';

class MainPart11 extends StatefulWidget {
  @override
  _MainPart11State createState() => _MainPart11State();
}

class _MainPart11State extends State<MainPart11>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Animation'),
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.purple],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
      ),
    );
  }
}
