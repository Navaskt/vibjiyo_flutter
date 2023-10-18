import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/image_constants.dart';
import 'package:vibgyo/screens/gender_selection_screen/gender_selection_screen.dart';
import 'package:vibgyo/screens/upload_photo_screen/upload_controller.dart';
import 'package:vibgyo/widgets/customButton.dart';

class UploadPhotoScreen extends StatelessWidget {
  UploadPhotoScreen({super.key});

  final UploadController uploadController = Get.put(UploadController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Photos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 400,
                child: Obx(
                  () => GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                              decoration: uploadController.imagePath1.value == ''
                                  ? BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 0.5,
                                  color: ColorConstant.bordercolor,
                                ),
                              )
                                  : BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: FileImage(
                                    File(uploadController.imagePath1.value),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.bordercolor,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.all(8),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: GestureDetector(
                                onTap: () {
                                  uploadController.imagePath1.value == '' ?
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        title: const Text('Select Source'),
                                        content: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                                uploadController.pickedImage(
                                                    context, ImageSource.camera);
                                              },
                                              child: const Text("Camera"),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  uploadController.pickedImage(
                                                      context,
                                                      ImageSource.gallery);
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
                                  ):
                                  showDialog(context: context, builder: (context) {
                                    return AlertDialog(
                                      content: const Text('Are you sure to remove photo?'),
                                      actions: [
                                        TextButton(onPressed: () {
                                          Get.back();
                                        }, child: const Text('close'),),
                                        ElevatedButton(onPressed: () {
                                          uploadController.imagePath1.value = '';
                                          Get.back();
                                        }, child:const Text('Delete'), ),
                                      ],
                                    );
                                  },);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover, image: rainbow),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: uploadController.imagePath1.value == ''
                                      ? const Icon(
                                    Icons.add,
                                    size: 28,
                                    color: ColorConstant.white,
                                  )
                                      : const Icon(
                                    Icons.close,
                                    size: 28,
                                    color: ColorConstant.white,
                                  ),
                                ),
                              ),
                            ),
                            // Add additional widgets inside the stack if needed
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                              decoration: uploadController.imagePath2.value == ''
                                  ? BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 0.5,
                                  color: ColorConstant.bordercolor,
                                ),
                              )
                                  : BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth
                                  ,
                                  image: FileImage(
                                    File(uploadController.imagePath2.value),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.bordercolor,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.all(8),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: GestureDetector(
                                onTap: () {
                                  uploadController.imagePath2.value == '' ?
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        title: const Text('Select Source'),
                                        content: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                                uploadController.pickedImage2(
                                                    context, ImageSource.camera);
                                              },
                                              child: const Text("Camera"),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  uploadController.pickedImage2(
                                                      context,
                                                      ImageSource.gallery);
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
                                  ):
                                  showDialog(context: context, builder: (context) {
                                    return AlertDialog(
                                      content: const Text('Are you sure to remove photo?'),
                                      actions: [
                                        TextButton(onPressed: () {
                                          Get.back();
                                        }, child: const Text('close'),),
                                        ElevatedButton(onPressed: () {
                                          uploadController.imagePath2.value = '';
                                          Get.back();
                                        }, child:const Text('Delete'), ),
                                      ],
                                    );
                                  },);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover, image: rainbow),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: uploadController.imagePath2.value == ''
                                      ? const Icon(
                                    Icons.add,
                                    size: 28,
                                    color: ColorConstant.white,
                                  )
                                      : const Icon(
                                    Icons.close,
                                    size: 28,
                                    color: ColorConstant.white,
                                  ),
                                ),
                              ),
                            )
                            // Add additional widgets inside the stack if needed
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                              decoration: uploadController.imagePath3.value == ''
                                  ? BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 0.5,
                                  color: ColorConstant.bordercolor,
                                ),
                              )
                                  : BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth
                                  ,
                                  image: FileImage(
                                    File(uploadController.imagePath3.value),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.bordercolor,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.all(8),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: GestureDetector(
                                onTap: () {
                                  uploadController.imagePath3.value == '' ?
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        title: const Text('Select Source'),
                                        content: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                                uploadController.pickedImage3(
                                                    context, ImageSource.camera);
                                              },
                                              child: const Text("Camera"),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  uploadController.pickedImage3(
                                                      context,
                                                      ImageSource.gallery);
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
                                  ):
                                  showDialog(context: context, builder: (context) {
                                    return AlertDialog(
                                      content: const Text('Are you sure to remove photo?'),
                                      actions: [
                                        TextButton(onPressed: () {
                                          Get.back();
                                        }, child: const Text('close'),),
                                        ElevatedButton(onPressed: () {
                                          uploadController.imagePath3.value = '';
                                          Get.back();
                                        }, child:const Text('Delete'), ),
                                      ],
                                    );
                                  },);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover, image: rainbow),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: uploadController.imagePath3.value == ''
                                      ? const Icon(
                                    Icons.add,
                                    size: 28,
                                    color: ColorConstant.white,
                                  )
                                      : const Icon(
                                    Icons.close,
                                    size: 28,
                                    color: ColorConstant.white,
                                  ),
                                ),
                              ),
                            )
                            // Add additional widgets inside the stack if needed
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                              decoration: uploadController.imagePath4.value == ''
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        width: 0.5,
                                        color: ColorConstant.bordercolor,
                                      ),
                                    )
                                  : BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth
                                        ,
                                        image: FileImage(
                                          File(uploadController.imagePath4.value),
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.bordercolor,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                              margin: const EdgeInsets.all(8),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: GestureDetector(
                                onTap: () {
                                  uploadController.imagePath4.value == '' ?
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        title: const Text('Select Source'),
                                        content: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                                uploadController.pickedImage4(
                                                    context, ImageSource.camera);
                                              },
                                              child: const Text("Camera"),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  uploadController.pickedImage4(
                                                      context,
                                                      ImageSource.gallery);
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
                                  ):
                                      showDialog(context: context, builder: (context) {
                                        return AlertDialog(
                                          content: const Text('Are you sure to remove photo?'),
                                          actions: [
                                            TextButton(onPressed: () {
                                              Get.back();
                                            }, child: const Text('close'),),
                                            ElevatedButton(onPressed: () {
                                              uploadController.imagePath4.value = '';
                                              Get.back();
                                            }, child:const Text('Delete'), ),
                                          ],
                                        );
                                      },);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover, image: rainbow),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: uploadController.imagePath4.value == ''
                                      ? const Icon(
                                          Icons.add,
                                          size: 28,
                                          color: ColorConstant.white,
                                        )
                                      : const Icon(
                                          Icons.close,
                                          size: 28,
                                          color: ColorConstant.white,
                                        ),
                                ),
                              ),
                            )
                            // Add additional widgets inside the stack if needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(GenderSelectionScreen());
                      },
                      child: CustomButton('Save')),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
