import 'package:flutter/material.dart';
import 'package:flutter_application_1/switch_day_night.dart';

class MainPart10 extends StatefulWidget {
  @override
  _MainPart10State createState() => _MainPart10State();
}

class _MainPart10State extends State<MainPart10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Rive + Flutter'),
      ),
      body: Center(
        child: SwitchDayNight(),
      ),
    );
  }
}
