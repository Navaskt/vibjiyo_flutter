import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/date_chips/date_chip.dart';
import 'package:flutter/material.dart';

import '../../constants/colorconstants.dart';


class MessageDetails extends StatelessWidget {
  MessageDetails({Key? key}) : super(key: key);
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                color: Colors.transparent,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg'),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text('Rahul Dev',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Online',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    width: 205,
                    height: 1,
                    decoration: const BoxDecoration(color: Color(0xffe8e6ea))),
              ],
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                DateChip(
                  date: DateTime(2023, 10, 01),
                ),
                const BubbleSpecialOne(
                  text: 'Hi How r u ?',
                  color: Color(0xFFE8E8EE),
                  seen: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BubbleSpecialOne(
                  isSender: false,
                  text:
                      'n publishing and graphic design, Lorem ipsum is a place',
                  color: Color(0xfffee5e9),
                  seen: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BubbleSpecialOne(
                  text:
                      'n publishing and graphic design, Lorem ipsum is a place?',
                  color: Color(0xFFE8E8EE),
                  seen: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BubbleSpecialOne(
                  isSender: false,
                  text:
                      'n publishing and graphic design, Lorem ipsum is a place',
                  color: Color(0xfffee5e9),
                  seen: true,
                ),
                DateChip(
                  date: DateTime(now.year, now.month, now.day),
                ),
                const BubbleSpecialOne(
                  text:
                      'n publishing and graphic design, Lorem ipsum is a place?',
                  color: Color(0xFFE8E8EE),
                  seen: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BubbleSpecialOne(
                  isSender: false,
                  text:
                      'n publishing and graphic design, Lorem ipsum is a place',
                  color: Color(0xfffee5e9),
                  seen: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.25,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: TextField(
                              cursorColor: Colors.black,
                              //controller: _sendMessageController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "  Type Here....",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF177767),
                            ),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
