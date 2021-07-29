import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_bloc.dart';

class MainPart4 extends StatefulWidget {
  @override
  _MainPart4State createState() => _MainPart4State();
}

class _MainPart4State extends State<MainPart4> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.EventSink.add(ColorEvent.to_amber);
              }),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.EventSink.add(ColorEvent.to_light_blue);
              }),
        ],
      ),
      appBar: AppBar(
        title: Text('BLoC tanpa Library'),
      ),
      body: Center(
          child: StreamBuilder(
        stream: bloc.stateStream,
        initialData: Colors.amber,
        builder: (context, snapshot) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: snapshot.data,
          );
        },
      )),
    );
  }
}
