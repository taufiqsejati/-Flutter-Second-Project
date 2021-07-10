import 'package:flutter/material.dart';

class MainPart8 extends StatefulWidget {
  @override
  _MainPart8State createState() => _MainPart8State();
}

class _MainPart8State extends State<MainPart8> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWidget,
                transitionBuilder: (child, animation) => RotationTransition(
                      turns: animation,
                      child: child,
                    )),
            Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON) {
                      myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                      // myWidget = SizedBox(
                      //   width: 200,
                      //   height: 100,
                      //   child: Center(
                      //     child: Text(
                      //       'Switch : ON',
                      //       style: TextStyle(
                      //           color: Colors.green,
                      //           fontWeight: FontWeight.w700,
                      //           fontSize: 20),
                      //     ),
                      //   ),
                      // );
                    } else {
                      myWidget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
