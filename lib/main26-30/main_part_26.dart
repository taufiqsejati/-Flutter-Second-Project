import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main26-30/custom_button.dart';
import 'package:flutter_application_1/styles/custom_style.dart';

class MainPart26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          'Division Example',
          style: CustomStyles.txtStyle.clone()..fontSize(18),
        ),
        backgroundColor: Colors.red[900],
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(CustomStyles.buttonStyle),
            SizedBox(
              height: 20,
            ),
            CustomButton(CustomStyles.buttonStyle.clone()
              ..background.color(Colors.green[300])
              ..border(all: 3, color: Colors.green[900]))
          ],
        ),
      ),
    );
  }
}
