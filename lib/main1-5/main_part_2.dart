import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_model.dart';
import 'package:logger/logger.dart';

class MainPart2 extends StatefulWidget {
  @override
  _MainPart2State createState() => _MainPart2State();
}

class _MainPart2State extends State<MainPart2> {
  User user = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((user != null)
                ? user.id + " | " + user.name
                : 'Tidak ada data'),
            RaisedButton(
              onPressed: () {
                User.connectToAPI('2').then((value) {
                  user = value;
                  setState(() {});
                  var logger = Logger();

                  logger.d("Logger is working!", user);
                });
              },
              child: Text('GET'),
            )
          ],
        ),
      ),
    );
  }
}
