import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart16 extends StatefulWidget {
  @override
  _MainPart16State createState() => _MainPart16State();
}

class _MainPart16State extends State<MainPart16> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subTitle, String pricing) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xff007DFF)
                      : Color(0xff4D5B7C),
                ),
                borderRadius: BorderRadius.circular(14)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedIndex == index
                        ? Image.asset(
                            'assets/images/check_two.png',
                            width: 18,
                            height: 18,
                          )
                        : Image.asset(
                            'assets/images/check.png',
                            width: 18,
                            height: 18,
                          ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: planTextStyle,
                        ),
                        Text(
                          subTitle,
                          style: descTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(width: 91),
                    Text(
                      pricing,
                      style: priceTextStyle,
                    )
                  ],
                )
              ],
            )),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 32, right: 32),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/icon_one.png',
                width: 267,
                height: 200,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Updrade to',
                  style: titleTextStyle2,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Pro',
                  style: titleProTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Go unlock all features and\nbuild your own business bigger',
              style: subTitleTextStyle2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Column(
        children: [
          Container(
            width: 311,
            height: 51.23,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff007DFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(71))),
                onPressed: () {},
                child: Text(
                  'Checkout Now',
                  style: buttonTextStyle,
                )),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff04112F),
      body: ListView(children: [
        Column(
          children: [
            header(),
            SizedBox(
              height: 50,
            ),
            option(0, 'Monthly', 'Good for starting up', '\$20'),
            option(1, 'Quarterly', 'Focusing on building', '\$55'),
            option(2, 'Yearly', 'Steady company', '\$220'),
            SizedBox(
              height: 50,
            ),
            selectedIndex == -1 ? SizedBox() : checkoutButton(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ]),
    );
  }
}
