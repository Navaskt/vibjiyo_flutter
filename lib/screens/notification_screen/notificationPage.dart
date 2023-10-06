import 'package:flutter/material.dart';

import '../../constants/colorconstants.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: ColorConstant.appbarTitleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Adham Jhon",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                        Text('2.30 PM',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade400)),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.red,
                          ),
                          child: const Center(
                              child: Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 1,
                        decoration:
                            const BoxDecoration(color: Color(0xffe8e6ea))),
                  ],
                ),
              );
            },
          )),
    );
  }
}
