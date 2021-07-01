import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Api Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : 'Tidak ada data'),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToApi('Badu', 'dokter').then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text('POST'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
