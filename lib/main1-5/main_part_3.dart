import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_result_model.dart';

class MainPart3 extends StatefulWidget {
  @override
  _MainPart3State createState() => _MainPart3State();
}

class _MainPart3State extends State<MainPart3> {
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
