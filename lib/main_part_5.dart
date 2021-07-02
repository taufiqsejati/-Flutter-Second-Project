import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_bloc_1.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Bloc dengan flutter bloc'),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: currentColor,
            duration: Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}
