import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ChatTile3 extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  ChatTile3({
    this.imageUrl,
    this.text,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: titleTextStyle.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
