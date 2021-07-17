import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          flexibleSpace: Stack(
            children: [
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Appbar with custom Height',
                    style: titleTextStyle2.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'AppBar dengan Custom Height\n(PrefferedSized)',
          style: titleTextStyle,
          textAlign: TextAlign.center,
        ),
      )),
    );
  }
}
