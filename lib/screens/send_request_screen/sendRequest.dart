import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colorconstants.dart';
import '../friend_request_screen/friendRequestPage.dart';


class SendRequest extends StatelessWidget {
  SendRequest({Key? key}) : super(key: key);
  List image = [
    'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg',
    'https://e1.pxfuel.com/desktop-wallpaper/423/925/desktop-wallpaper-kerala-girls-malayalam-girls.jpg',
    'https://p0.pxfuel.com/preview/621/868/1023/fashion-style-hair-t-shirt-royalty-free-thumbnail.jpg',
    'https://www.breezemasti.com/wp-content/uploads/Leona-Lishoy-malayalam-actress-images-2.jpg',
    'https://i0.wp.com/pixahive.com/wp-content/uploads/2020/12/Smart-boy-243728-pixahive.jpg',
    'https://stylesatlife.com/wp-content/uploads/2021/03/latest-Malayalam-Actress-Anarkali-Marikar.jpg'
  ];

  List names = [
    'Thara Vishwanath',
    'Supriya K',
    'Robert Mathew',
    'Christena',
    'Sam Alex',
    'Meenakshi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: const Text(
          'Send Request',
          style: TextStyle(
            color: ColorConstant.appbarTitleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Get.to(FriendRequestPage());
              },
              child: Text("View Friend Request ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue.shade800)),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: image.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: Text("23 min",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade500)),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 61,
                            width: 61,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 2),
                              color: Colors.transparent,
                            ),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(image[i]),
                                ),
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(names[i],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 167,
                                      height: 31,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xfff27121),
                                            Color(0xffe94040)
                                          ],
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text("Cancel Request",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white)),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: 1,
                          decoration:
                              const BoxDecoration(color: Color(0xffe8e6ea))),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
