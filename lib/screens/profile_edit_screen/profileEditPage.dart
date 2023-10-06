import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vibgyo/constants/image_constants.dart';

import '../../constants/colorconstants.dart';


class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({Key? key}) : super(key: key);
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
              height: 20,
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
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Thara",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Vishwanath",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Password",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("01-10-1996",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 159,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Text(
                            "My name is Akshay KS and I enjoy meeting people and finding ways to help them have an uplifting experience. I enjoy reading.....",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Media",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        color: Colors.black.withOpacity(0.5),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .25,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CachedNetworkImage(
                                    height: MediaQuery.of(context).size.height *
                                        .25,
                                    imageUrl: image[0],
                                    fit: BoxFit.cover,
                                    placeholder: (_, __) => Container(
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Lottie.asset(
                                            'assets/images/loading.json',
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
                            )),
                      ),
                      Card(
                        color: Colors.black.withOpacity(0.5),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .25,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CachedNetworkImage(
                                    height: MediaQuery.of(context).size.height *
                                        .25,
                                    imageUrl: image[1],
                                    fit: BoxFit.cover,
                                    placeholder: (_, __) => Container(
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Lottie.asset(
                                            'assets/images/loading.json',
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
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        color: Colors.black.withOpacity(0.5),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .15,
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CachedNetworkImage(
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    imageUrl: image[2],
                                    fit: BoxFit.cover,
                                    placeholder: (_, __) => Container(
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Lottie.asset(
                                            'assets/images/loading.json',
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
                            )),
                      ),
                      Card(
                        color: Colors.black.withOpacity(0.5),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .15,
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CachedNetworkImage(
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    imageUrl: image[3],
                                    fit: BoxFit.cover,
                                    placeholder: (_, __) => Container(
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Lottie.asset(
                                            'assets/images/loading.json',
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
                            )),
                      ),
                      Card(
                        color: Colors.black.withOpacity(0.5),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .15,
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CachedNetworkImage(
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    imageUrl: image[4],
                                    fit: BoxFit.cover,
                                    placeholder: (_, __) => Container(
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Lottie.asset(
                                            'assets/images/loading.json',
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
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 54,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      opacity: 0.7,
                      fit: BoxFit.cover,
                      image: btnBg
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300)),
                child: const Center(
                    child: Text("Save",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )))),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
