import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart27 extends StatefulWidget {
  // bool isSelected = false;
  @override
  _MainPart27State createState() => _MainPart27State();
}

class _MainPart27State extends State<MainPart27> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: colorFilter,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Demo GDG 2019'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini Text Normal seperti biasanya.',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            SelectableText(
              "Ini adalah selectable text. Silahkan pilih saya.",
              style: titleTextStyle,
              showCursor: true,
              cursorWidth: 3,
              cursorColor: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            ToggleButtons(
              children: [
                Icon(Icons.access_alarm),
                Icon(Icons.adb),
                Icon(Icons.add_comment),
              ],
              isSelected: isSelected,
              onPressed: (index) {
                setState(() {
                  if (index == 0)
                    colorFilter =
                        ColorFilter.mode(Colors.blue, BlendMode.screen);
                  else if (index == 1)
                    colorFilter =
                        ColorFilter.mode(Colors.green, BlendMode.softLight);
                  else
                    colorFilter =
                        ColorFilter.mode(Colors.purple, BlendMode.multiply);
                  for (var i = 0; i < isSelected.length; i++)
                    isSelected[i] = (i == index) ? true : false;
                });
              },
              fillColor: Colors.red[50],
              selectedColor: Colors.red,
              selectedBorderColor: Colors.red,
              splashColor: Colors.blue,
              highlightColor: Colors.yellow,
              borderRadius: BorderRadius.circular(15),
            )
          ],
        )),
      ),
    );
  }
}
