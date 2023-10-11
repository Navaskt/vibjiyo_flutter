import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/image_constants.dart';

import '../../constants/colorconstants.dart';
import '../send_request_screen/sendRequest.dart';


class FriendRequestPage extends StatelessWidget {
  FriendRequestPage({Key? key}) : super(key: key);
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
          'Friend Request',
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
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child:  InkWell(
                  onTap: (){
                    Get.to(SendRequest());
                  },
                  child: Text(
                      "View Send Request ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue.shade800
                      )
                  ),
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
                                border: Border.all(color: Colors.white, width: 2),
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
                                  InkWell(
                                    onTap:(){
                                      dialogueBox(context,'Are you sure to confirm this friend request..');
                                    },
                                    child: Container(
                                        width: 110,
                                        height: 31,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              opacity: 0.6,
                                              fit: BoxFit.cover,
                                              image: btnBg
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                        child: const Center(
                                          child: Text("Confirm",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              )),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap:(){
                                      dialogueBox(context,'Are you sure to delete this friend request..');
                                    },
                                    child: Container(
                                        width: 110,
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
                                          child: Text("Delete",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white)),
                                        )),
                                  ),
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
  dialogueBox(BuildContext context,message){
    showDialog(
        barrierColor: Colors.white.withOpacity(.2),
        context: context,
        builder: (BuildContext context) {
          return Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  width: 295,
                  height: 183,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Are you sure ?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            // decoration: TextDecoration.none,
                            //fontFamily: Theme.of(context).textTheme,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          message,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  width: 105,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xffe94040)),
                                  child: const Center(
                                    child: Text("No",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  width: 105,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green),
                                  child: const Center(
                                    child: Text("Yes",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
