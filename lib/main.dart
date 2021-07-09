import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/main_part_1.dart';
import 'package:flutter_application_1/main_part_2.dart';
import 'package:flutter_application_1/main_part_3.dart';
import 'package:flutter_application_1/main_part_4.dart';
import 'package:flutter_application_1/main_part_5.dart';
import 'package:flutter_application_1/main_part_6.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_application_1/cubit/countercubit_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(debugShowCheckedModeBanner: false, home: MainPagee());
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (context) => CounterBloc(),
            child: BlocProvider(
                create: (context) => CountercubitCubit(), child: MainPagee())));
  }
}

class MainPagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('My Project'),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
              child: Text('Navigation'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              }),
          RaisedButton(
              child: Text('Template 1'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPart1();
                }));
              }),
          RaisedButton(
              child: Text('Api POST'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPart3();
                }));
              }),
          RaisedButton(
              child: Text('Api GET Single Data'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPart2();
                }));
              }),
          RaisedButton(
              child: Text('Api GET Multiple Data'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPart5();
                }));
              }),
          RaisedButton(
              child: Text('Change Color BLoC State'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPart4();
                }));
              }),
          // RaisedButton(
          //     child: Text('Counter BLoC State & Cubit State'),
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) {
          //         return MainPart6();
          //       }));
          //     }),
        ],
      )),
    );
  }
}
