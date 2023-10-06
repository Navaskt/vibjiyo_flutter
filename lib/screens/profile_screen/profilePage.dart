
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants/colorconstants.dart';
import '../profile_edit_screen/profileEditPage.dart';



class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController(text: 'Thara Vishwanath');
  List image = [
    'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg',
    'https://e1.pxfuel.com/desktop-wallpaper/423/925/desktop-wallpaper-kerala-girls-malayalam-girls.jpg',
    'https://p0.pxfuel.com/preview/621/868/1023/fashion-style-hair-t-shirt-royalty-free-thumbnail.jpg',
    'https://www.breezemasti.com/wp-content/uploads/Leona-Lishoy-malayalam-actress-images-2.jpg',
    'https://i0.wp.com/pixahive.com/wp-content/uploads/2020/12/Smart-boy-243728-pixahive.jpg',
    'https://stylesatlife.com/wp-content/uploads/2021/03/latest-Malayalam-Actress-Anarkali-Marikar.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: ColorConstant.appbarTitleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.5,
                      startAngle: 180,
                      center: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: Colors.transparent,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg'),
                          ),
                        ),
                      ),
                      progressColor: Colors.red,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text("55% Complete",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 5,
                    child: InkWell(
                      onTap: () {
                        Get.to(ProfileEditPage());
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(2, 2),
                              ),
                            ]),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Akshay KS, 25",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Card(
                elevation: 5,
                shadowColor: Colors.black,
                color: Colors.black.withOpacity(0.5),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: 36,
                          color: Colors.grey,
                          child: const Center(
                              child: Text("Active Plan",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Plan Name  : 1 Month",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Start Date  : 01-Oct-23",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Start Date  : 31-Oct-23",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Amount : 99",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 50,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfff27121), Color(0xffe94040)],
              )),
              child: const Center(
                child: Text("UPGRADE YOUR PLAN",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                  itemCount: 3,
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Card(
                          color: Colors.black.withOpacity(0.5),
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xfff27121), Color(0xffe94040)],
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    height: 43,
                                    color: Colors.black.withOpacity(0.4),
                                    child: const Center(
                                      child: Text("1 MONTH PLAN",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("₹99",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 120,
                                      height: 1.249874472618103,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffe8e6ea))),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Unlimited Message",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text("Unlimited Profile View",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text("Unlimited Friend Request",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 111,
                                    height: 31,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [

                                        Image.asset(
                                          "assets/images/crown.png",
                                          width: 20,
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("Upgrade",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
