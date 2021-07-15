import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ChatTile2 extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  ChatTile2({
    this.imageUrl,
    this.text,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
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
          )
        ],
      ),
    );
  }
}
