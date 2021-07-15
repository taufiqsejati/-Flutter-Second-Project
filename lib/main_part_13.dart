import 'dart:ui';

import 'package:flutter/material.dart';

class MainPart13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/pantai.jpg'),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pantai Teluk Penyu',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Cilacap, Jawa Tengah',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffFFB800),
                        ),
                        Text('4.2')
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff00A3FF),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CALL',
                        style:
                            TextStyle(color: Color(0xff00A3FF), fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Color(0xff00A3FF),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ROUTE',
                        style:
                            TextStyle(color: Color(0xff00A3FF), fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Color(0xff00A3FF),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'SHARE',
                        style:
                            TextStyle(color: Color(0xff00A3FF), fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Pulau Bantayan yang terletak di ujung utara Cebu, Filipina bagian tengah ini memiliki luas kurang dari 100 mil atau 160.934 persegi. Pulau ini memang terkenal akan keindahan pesona pantai pasir putihnya.\n\nSelain itu, panorama di pantai ini semakin cantik dengan warna airnya yang pirus atau biru kehijauan. Warna air itu begitu padu dengan pasir putih pantai dan birunya langit yang cerah.\n\nPantai di Pulau Bantayan sangat cocok bagi mereka yang memburu suasana santai. Namun di sini tidak ada resor bintang lima sehingga masih memunculkan kesan natural dan sederhana.',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
