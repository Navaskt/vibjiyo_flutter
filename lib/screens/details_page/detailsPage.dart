import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/image_constants.dart';
class DetailsPage extends StatelessWidget {
  String image;
  String name;
  String age;

  DetailsPage(this.image, this.name, this.age, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .5,
                      width: MediaQuery.of(context).size.width * 1,
                      margin: const EdgeInsets.all(16.0),
                      child: CachedNetworkImage(
                          height: MediaQuery.of(context).size.height * .5,
                          imageUrl: image,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.mic,
                            color: ColorConstant.detailPageColor,
                            size: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //Get.to( MessageList());
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              color: Colors.transparent,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: detailsPageLikeBg
                              ),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.person_search_sharp,
                            color: Colors.purple,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$name , $age',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Proffesional model",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Location",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            )),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey.shade300),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 15,
                                color: ColorConstant.detailPageColor,
                              ),
                              Text("10 km",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: ColorConstant.detailPageColor)),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Text("Kaloor, Ernakulam",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("About",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                        "My name is Anarkali Sharma and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    const Text("Read more..",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorConstant.detailPageColor)),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Interested in seeing",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                    color: ColorConstant.detailPageColor)),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.done_all,
                                    color: ColorConstant.detailPageColor,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Men",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: ColorConstant.detailPageColor)),
                                ],
                              ),
                            )),
                        Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: const Center(
                              child: Text("Women",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                            )),
                        Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: const Center(
                              child: Text("LGBTQ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Message ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 66,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text("Type here.......",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: 66,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.send,
                              color: ColorConstant.detailPageColor,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
