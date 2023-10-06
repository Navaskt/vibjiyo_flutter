import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vibgyo/screens/about_create_screen/about_create_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/colorconstants.dart';
import 'controller.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({super.key});

  final ProfileCtreateController profileCreateController =
      Get.put(ProfileCtreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile details'),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 140,
                    width: 140,
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
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/abstract-rainbow-background.jpg')),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(2, 2),
                            ),
                          ]),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 48,
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextFormField(
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
                      color: Color(
                          0xFFE8E6EA), // Set the enabled border color here
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
            height: 48,
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConstant.bordercolor, // Set the focused border color here
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConstant.bordercolor, // Set the enabled border color here
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
            height: 48,
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConstant.bordercolor, // Set the focused border color here
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConstant.bordercolor, // Set the enabled border color here
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'User name',
                  labelStyle: const TextStyle(
                    color: ColorConstant.bordercolor,
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.80,
              child: TextFormField(
                obscureText: profileCreateController.obscureText.value,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        profileCreateController.togglePasswordVisibility();
                      },
                      child: Icon(
                        profileCreateController.obscureText.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: ColorConstant.bordercolor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(
                            0xFFE8E6EA), // Set the focused border color here
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(
                            0xFFE8E6EA), // Set the enabled border color here
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: ColorConstant.bordercolor,
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => GestureDetector(
              onTap: () async {
                final tempdate = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2020, 1, 1),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2020));
                profileCreateController.dob.value =
                    DateFormat('dd-MM-yyyy').format(tempdate!);
              },
              child: Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstant.bordercolor,
                ),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.red,
                    ),
                    Text(
                      profileCreateController.dob.value,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Get.to(AboutCreateScreen());
              },
              child: CustomButton('Save'))
        ],
      ),
    );
  }
}
