import 'package:flutter/material.dart';

class MainPart19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(fontFamily: 'Poppins'),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Tab Bar'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.videocam),
                    text: "Video",
                  ),
                  Tab(
                    child:
                        Image(image: AssetImage('assets/images/friend1.png')),
                  ),
                  Tab(
                    icon: Icon(Icons.camera),
                  ),
                  Tab(
                    text: 'Gallery',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text('Tab 1'),
                ),
                Center(
                  child: Text('Tab 2'),
                ),
                Center(
                  child: Text('Tab 3'),
                ),
                Center(
                  child: Text('Tab 4'),
                ),
              ],
            ),
          ),
        ));
  }
}
