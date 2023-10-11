import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vibgyo/constants/image_constants.dart';
import 'package:vibgyo/screens/profile_edit_screen/profileController.dart';


import '../../../constants/colorconstants.dart';
import 'mediaEditPage.dart';


class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firstName = TextEditingController(text: 'Thara');
  final lastName = TextEditingController(text: 'Vishwanath');
  final password = TextEditingController(text: '123456');
  final dob = TextEditingController(text: '25-05-1996');
  final aboutMe = TextEditingController(text:
  'My name is Akshay KS and I enjoy meeting people and finding ways to help them have an uplifting experience. I enjoy reading.....');
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
    final ProfileEditController profileEditController=Get.put(ProfileEditController());
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
      body: Obx(()=>
         Form(
           key: _formKey,
           child: SingleChildScrollView(
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
                          percent: 0.7,
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
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: profileEditController.isLoad.value==false
                                    ?  const NetworkImage(
                                        'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg')
                                    : FileImage(File(profileEditController.file.value)) as ImageProvider,
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
                            showModalBottomSheet(
                              context: context,
                              builder: ((builder) {
                                return Container(
                                  height: 100.0,
                                  width: MediaQuery.of(context).size.width * 1,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      const Text(
                                        "Choose Profile photo",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            InkWell(
                                              onTap: () async {
                                                profileEditController.takePhoto(ImageSource.camera);
                                                 Get.back();
                                                 },
                                              child: const Column(
                                                children: [
                                                  Icon(Icons.camera),
                                                  Text('Camera')
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 30,),
                                            InkWell(
                                              onTap: () {
                                                profileEditController.takePhoto(ImageSource.gallery);
                                                Get.back();
                                              },
                                              child: const Column(
                                                children: [
                                                  Icon(Icons.image),
                                                  Text('Gallery'),
                                                ],
                                              ),
                                            ),
                                          ])
                                    ],
                                  ),
                                );
                              }),
                            );
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
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: firstName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter first name';
                            }
                            return null; // Return null for valid input
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                           border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFFE8E6EA), // Set the focused border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: ColorConstant
                                      .bordercolor, // Set the enabled border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'First name',
                              labelStyle: const TextStyle(
                                color: ColorConstant.bordercolor,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller:lastName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter last name';
                            }
                            return null; // Return null for valid input
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFFE8E6EA), // Set the focused border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: ColorConstant
                                      .bordercolor, // Set the enabled border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Last name',
                              labelStyle: const TextStyle(
                                color: ColorConstant.bordercolor,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,

                        child: TextFormField(
                          controller: password,

                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter password';
                            }
                            return null; // Return null for valid input
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFFE8E6EA), // Set the focused border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: ColorConstant
                                      .bordercolor, // Set the enabled border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                color: ColorConstant.bordercolor,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(

                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          readOnly: true,
                          onTap: () async {
                            final tempdate = await showDatePicker(
                                context: context,
                                initialDate: DateTime(2020, 1, 1),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2020));
                            dob.text = DateFormat('dd-MM-yyyy').format(tempdate!);
                          },
                          controller: dob,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter date of birth';
                            }
                            return null; // Return null for valid input
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFFE8E6EA), // Set the focused border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: ColorConstant
                                      .bordercolor, // Set the enabled border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'DOB',
                              labelStyle: const TextStyle(
                                color: ColorConstant.bordercolor,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: aboutMe,
                          maxLines: 20,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFFE8E6EA), // Set the focused border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: ColorConstant
                                      .bordercolor, // Set the enabled border color here
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'About Me',
                              labelStyle: const TextStyle(
                                color: ColorConstant.bordercolor,
                              )),
                        ),
                      ),
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
                            InkWell(
                              onTap: (){
                                Get.to(const MediaEditPage());
                              },
                              child: Container(
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
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      profileEditController.submit(
                          firstName.text, lastName.text, password.text,
                          dob.text, aboutMe);

                    }
                    if (profileEditController.submitReturn.value == true) {
                      _showSnackBar(
                          context, profileEditController.message.value,
                          profileEditController.baseColor.value);
                    }
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 54,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              opacity: 0.7, fit: BoxFit.cover, image: btnBg),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: const Center(
                          child: Text("Save",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )))),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
                   ),
         ),
      ),
    );
  }
  void _showSnackBar(BuildContext context, String message,Color bgColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: bgColor,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message,style: const TextStyle(color: Colors.white),),
          ],
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
