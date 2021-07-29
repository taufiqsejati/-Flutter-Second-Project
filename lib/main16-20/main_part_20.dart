import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Latihan Hero Animation',
            style: titleTextStyle.copyWith(color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: 'args',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Container(
                width: 150,
                height: 150,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/biden.jpg')),
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Latihan Hero Animation',
            style: titleTextStyle.copyWith(color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
            ),
          ),
        ),
        body: Center(
          child: Hero(
            tag: 'args',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 400,
                height: 400,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/biden.jpg')),
              ),
            ),
          ),
        ));
  }
}
