import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MainPart12 extends StatefulWidget {
  @override
  _MainPart12State createState() => _MainPart12State();
}

class _MainPart12State extends State<MainPart12>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: Text(
            'Lottie Animation Demo',
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                // child: LottieBuilder.network(
                //     'https://assets2.lottiefiles.com/packages/lf20_HX0isy.json'),
                child: LottieBuilder.asset(
                  'assets/animation/kit8net.json',
                  controller: controller,
                ),
              ),
              Text('Featured Lottie Animation by kit8.net',
                  style: GoogleFonts.poppins()),
              RaisedButton(
                onPressed: () {
                  controller.forward();
                },
                child: Text('Play Animation', style: GoogleFonts.poppins()),
              )
            ],
          ),
        ));
  }
}
