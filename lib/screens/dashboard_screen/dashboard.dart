import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:vibgyo/constants/image_constants.dart';

import '../../constants/colorconstants.dart';
import '../details_page/detailsPage.dart';
import '../drawer_screen/drawerScreen.dart';
import '../friend_request_screen/friendRequestPage.dart';
import '../message_list_screen/messageList.dart';
import '../notification_screen/notificationPage.dart';
import '../upgrade_plan_screen/upgradePlan.dart';


class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
  List age = ['29', '23', '28', '30', '25', '23'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: const Text(
          'Matching Colors',
          style: TextStyle(
            color: ColorConstant.appbarTitleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
                child: Icon(Icons.notifications,
                    color: ColorConstant.detailPageColor)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
                onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
                child: const Icon(Icons.filter_list, color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .28,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            opacity: 0.5,
                            fit: BoxFit.cover,
                            image:drawerBackground
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 11, bottom: 10),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(FriendRequestPage());
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .075,
                                width: MediaQuery.of(context).size.width * 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("New Friend Request",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Colors.white),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(MessageList());
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .075,
                                width: MediaQuery.of(context).size.width * 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Unread Messages",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '5',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Colors.white),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(const NotificationPage());
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .075,
                                width: MediaQuery.of(context).size.width * 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Notifications",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Colors.white),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns in the grid
                    crossAxisSpacing: 2, // Spacing between columns
                    mainAxisSpacing: 2, // Spacing between rows
                    childAspectRatio: .71),
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                          DetailsPage(image[index], names[index], age[index]));
                    },
                    child: Card(
                      color: Colors.black.withOpacity(0.5),
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CachedNetworkImage(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .3,
                                      imageUrl: image[index],
                                      fit: BoxFit.cover,
                                      placeholder: (_, __) => Container(
                                          color: Colors.white,
                                          width: 30,
                                          height: 30,
                                          child: Center(
                                            child: Lottie.asset('assets/images/loading.json'
                                              ,
                                              width: 200,
                                              height: 200,
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                      errorWidget: (_, __, ___) => const Center(
                                              child: Icon(
                                            Icons.error,
                                          ))),
                                ],
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 60,
                                  // Adjust the height of the container as needed
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: proContainerBg
                                    ),
                                  ),

                                  // Background color and opacity
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 100,
                                            child: Text(
                                              names[index],
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ),
                                          ),
                                          Text(
                                            age[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.mic,
                                                color: Colors.white),
                                            SizedBox(
                                              height: 30,
                                              child: VerticalDivider(
                                                color: Colors.white,
                                                indent: 5,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Icon(Icons.person_add_alt_1,
                                                color: Colors.white)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        image: const DecorationImage(image: gender)
                                      ),

                                    ),
                                  ))
                            ],
                          )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const DrawerScreen(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        // <-- HERE
        showUnselectedLabels: false,
        // <-- AND HERE
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        onTap: (index) {
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
                                "Oops !",
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
                              const Text(
                                "This feature is not available right now, please subscribe this plan and enjoy",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const UpgradePlan());
                                },
                                child: Container(
                                  width: 214.5,
                                  height: 45.112300872802734,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xffe94040)),
                                  child: const Center(
                                    child: Text("Purchase Plan",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                            color: Colors.white)),
                                  ),
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
        },
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: (""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: (""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: (""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("ac"),
          ),
        ],
      ),
    );
  }
}
