import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/movie_box.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPart24 extends StatefulWidget {
  @override
  _MainPart24State createState() => _MainPart24State();
}

class _MainPart24State extends State<MainPart24> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://upload.wikimedia.org/wikipedia/commons/1/17/Vladimir_Putin_%282018-03-01%29_03_%28cropped%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Hitler_portrait_crop_%28colorized%29.jpg/768px-Hitler_portrait_crop_%28colorized%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Joe_Biden_presidential_portrait.jpg/819px-Joe_Biden_presidential_portrait.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/President_Suharto%2C_1993.jpg/599px-President_Suharto%2C_1993.jpg"
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider Page View'),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: urls.length,
            itemBuilder: (context, index) {
              double difference = index - currentPageValue;
              if (difference < 0) {
                difference *= -1;
              }
              difference = min(1, difference);
              return Center(
                child: MovieBox(
                  urls[index],
                  scale: 1 - (difference * 0.3),
                ),
              );
            }));
  }
}
