import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/widgets/chat_tile2.dart';
import 'package:flutter_application_1/widgets/chat_tile.dart';
import 'package:flutter_application_1/widgets/chat_tile3.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPart15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message ...',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999),
              ),
            ),
            Image.asset(
              'assets/images/ic_btn_send.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Container(
        color: Color(0xffE5E5E5),
        child: ListView(children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/group1.png',
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jakarta Fair',
                            style: titleTextStyle,
                          ),
                          Text(
                            '14,209 members',
                            style: subTitleTextStyle,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.call,
                            color: whiteColor,
                            size: 22,
                          ),
                        ),
                      )
                      // Image.asset(
                      //   'assets/images/ic_btn_call.png',
                      //   height: 35,
                      //   width: 35,
                      // )
                    ],
                  ),
                ),
              ),
              ChatTile2(
                imageUrl: 'assets/images/friend1.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              ChatTile2(
                imageUrl: 'assets/images/friend3.png',
                text: 'Find here :P',
                time: '3:11',
              ),
              ChatTile3(
                imageUrl: 'assets/images/friend4.png',
                text:
                    'Thinking about how to\ndeal with this client from\nhell...',
                time: '22:08',
              ),
              ChatTile2(
                imageUrl: 'assets/images/friend2.png',
                text: 'Love them',
                time: '23:11',
              ),
              SizedBox(
                height: 90,
              )
            ],
          ),
        ]),
      )),
    );
  }
}
