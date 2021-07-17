import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/main_part_1.dart';
import 'package:flutter_application_1/main_part_10.dart';
import 'package:flutter_application_1/main_part_11.dart';
import 'package:flutter_application_1/main_part_12.dart';
import 'package:flutter_application_1/main_part_13.dart';
import 'package:flutter_application_1/main_part_14.dart';
import 'package:flutter_application_1/main_part_15.dart';
import 'package:flutter_application_1/main_part_16.dart';
import 'package:flutter_application_1/main_part_17.dart';
import 'package:flutter_application_1/main_part_18.dart';
import 'package:flutter_application_1/main_part_19.dart';
import 'package:flutter_application_1/main_part_2.dart';
import 'package:flutter_application_1/main_part_20.dart';
import 'package:flutter_application_1/main_part_21.dart';
import 'package:flutter_application_1/main_part_22.dart';
import 'package:flutter_application_1/main_part_3.dart';
import 'package:flutter_application_1/main_part_4.dart';
import 'package:flutter_application_1/main_part_5.dart';
import 'package:flutter_application_1/main_part_6.dart';
import 'package:flutter_application_1/main_part_7.dart';
import 'package:flutter_application_1/main_part_8.dart';
import 'package:flutter_application_1/main_part_9.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_application_1/cubit/countercubit_cubit.dart';

void main() {
  // runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(debugShowCheckedModeBanner: false, home: MainPagee());
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: MainPagee());
  }
}

class MainPagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Page'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Center(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    }),
                RaisedButton(
                    child: Text('Template 1'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart1();
                      }));
                    }),
                RaisedButton(
                    child: Text('Api POST'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart3();
                      }));
                    }),
                RaisedButton(
                    child: Text('Api GET Single Data'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart2();
                      }));
                    }),
                RaisedButton(
                    child: Text('Api GET Multiple Data'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart5();
                      }));
                    }),
                RaisedButton(
                    child: Text('Change Color BLoC State'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart4();
                      }));
                    }),
                RaisedButton(
                    child: Text('Animated Container & Gesture Detector'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart7();
                      }));
                    }),
                RaisedButton(
                    child: Text('Switch & Animated Switcher Widget'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart8();
                      }));
                    }),
                RaisedButton(
                    child: Text('Animated Padding Widget'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart9();
                      }));
                    }),
                RaisedButton(
                    child: Text('Rive + Flutter'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart10();
                      }));
                    }),
                RaisedButton(
                    child: Text('Animasi Dasar'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart11();
                      }));
                    }),
                RaisedButton(
                    child: Text('Lottie Animation'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart12();
                      }));
                    }),
                RaisedButton(
                    child: Text('Design to Code 1'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart13();
                      }));
                    }),
                RaisedButton(
                    child: Text('Design to Code 2'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart14();
                      }));
                    }),
                RaisedButton(
                    child: Text('Design to Code 3'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart15();
                      }));
                    }),
                RaisedButton(
                    child: Text('Design to Code 4'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart16();
                      }));
                    }),
                RaisedButton(
                    child: Text('Appbar Bercorak'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart17();
                      }));
                    }),
                RaisedButton(
                    child: Text(
                      'AppBar dengan Custom Height (PrefferedSized)',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart18();
                      }));
                    }),
                RaisedButton(
                    child: Text(
                      'TabBar',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart19();
                      }));
                    }),
                RaisedButton(
                    child: Text(
                      'Hero & ClipRRect',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart20();
                      }));
                    }),
                RaisedButton(
                    child: Text(
                      'Card Widget',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart21();
                      }));
                    }),
                RaisedButton(
                    child: Text(
                      'Positioned, FloatingActionButton, LoginPage',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPart22();
                      }));
                    }),
              ],
            )),
          )
        ],
      ),
    );
  }
}
