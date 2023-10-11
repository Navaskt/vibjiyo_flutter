import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:vibgyo/screens/about_create_screen/about_create_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';
import '../../constants/colorconstants.dart';
import 'controller.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({super.key});

  final ProfileCreateController profileCreateController =
      Get.put(ProfileCreateController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile details'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: profileCreateController.imagePath.value == ''
                            ? Container(
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
                                        'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
                                  ),
                                ),
                              )
                            : Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(File(
                                        profileCreateController
                                            .imagePath.value)),
                                  ),
                                ),
                              ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 20,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                scrollable: true,
                                title: const Text('Select Source'),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                        profileCreateController.pickedImage(
                                            context, ImageSource.camera);
                                      },
                                      child: const Text("Camera"),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Get.back();
                                          profileCreateController.pickedImage(
                                              context, ImageSource.gallery);
                                        },
                                        child: const Text("Gallery")),
                                    TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: const Text("Cancel"))
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/abstract-rainbow-background.jpg'),
                              ),
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

                width: MediaQuery.of(context).size.width * 0.80,
                child: TextFormField(
                  controller: firstnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Firstname can't be empty";
                    }
                    return null; // Validation passed
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(10),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
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

                width: MediaQuery.of(context).size.width * 0.80,
                child: TextFormField(
                  controller: lastnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Lastname can't be empty";
                    }
                    return null; // Validation passed
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(10),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant
                              .bordercolor, // Set the focused border color here
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
                width: MediaQuery.of(context).size.width * 0.80,
                child: TextFormField(
                  controller: usernameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username can't be empty";
                    }
                    return null; // Validation passed
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant
                              .bordercolor, // Set the focused border color here
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
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: profileCreateController.obscureText.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.length < 6) {
                        return 'Password must have at least 6 characters';
                      }
                      return null; // Validation passed
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.all(10),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1.5),
                        ),
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
                              color: ColorConstant
                                  .bordercolor // Set the focused border color here
                              ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: ColorConstant
                                  .bordercolor // Set the enabled border color here
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
                        initialDate: DateTime.now().subtract(const Duration(days: 6574),),
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now().subtract(const Duration(days: 6574),),);
                    profileCreateController.dob.value =
                        DateFormat('dd-MM-yyyy').format(tempdate!);
                  },
                  child: Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF1EFEF),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          profileCreateController.dob.value,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Get.to( AboutCreateScreen());
                    firstnameController.text = '';
                    lastnameController.text = '';
                    usernameController.text = '';
                    passwordController.text = '';
                  }
                },
                child: CustomButton('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
