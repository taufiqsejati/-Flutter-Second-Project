import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_model.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}
