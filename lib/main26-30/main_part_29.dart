import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/movie_box.dart';

class MainPart29 extends StatelessWidget {
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.8);
  List<String> urls = [
    "https://upload.wikimedia.org/wikipedia/commons/1/17/Vladimir_Putin_%282018-03-01%29_03_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Hitler_portrait_crop_%28colorized%29.jpg/768px-Hitler_portrait_crop_%28colorized%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Joe_Biden_presidential_portrait.jpg/819px-Joe_Biden_presidential_portrait.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/President_Suharto%2C_1993.jpg/599px-President_Suharto%2C_1993.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Slider tanpa Transition'),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: urls.length,
            itemBuilder: (context, index) => Center(
                  child: MovieBox(urls[index]),
                )));
  }
}
