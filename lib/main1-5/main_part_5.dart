import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_model_2.dart';
import 'package:logger/logger.dart';

class MainPart5 extends StatefulWidget {
  @override
  _MainPart5State createState() => _MainPart5State();
}

class _MainPart5State extends State<MainPart5> {
  String output = "No Data";
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
            Text(output),
            RaisedButton(
              onPressed: () {
                User.getUsers('2').then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++) {
                    output = output + "[" + users[i].name + ']';
                    setState(() {});
                  }
                  var logger = Logger();

                  logger.d("Logger is working!", users);
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
