import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadController extends GetxController{



  var obscureText = true.obs;
  var imagePath1 = ''.obs;
  var imagePath2 = ''.obs;
  var imagePath3 = ''.obs;
  var imagePath4 = ''.obs;
  var dob = 'Choose birthday date'.obs;


  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }


  pickedImage(context, source) async {
    final image1 =
    await ImagePicker().pickImage(source: source, imageQuality: 80);

    try {
      if (image1 != null) {
        imagePath1.value = image1.path;
      }
    } on PlatformException catch (e) {
      Get.snackbar('Permission Denied',
          'Please grant access to the gallery to pick an image.');
    }
  }

  pickedImage2(context, source) async {
    final image2 =
    await ImagePicker().pickImage(source: source, imageQuality: 80);

    try {
      if (image2 != null) {
        imagePath2.value = image2.path;
      }
    } on PlatformException catch (e) {
      Get.snackbar('Permission Denied',
          'Please grant access to the gallery to pick an image.');
    }
  }

  pickedImage3(context, source) async {
    final image3 =
    await ImagePicker().pickImage(source: source, imageQuality: 80);

    try {
      if (image3 != null) {
        imagePath3.value = image3.path;
      }
    } on PlatformException catch (e) {
      Get.snackbar('Permission Denied',
          'Please grant access to the gallery to pick an image.');
    }
  }


  pickedImage4(context, source) async {
    final image4 =
    await ImagePicker().pickImage(source: source, imageQuality: 80);

    try {
      if (image4 != null) {
        imagePath4.value = image4.path;
      }
    } on PlatformException catch (e) {
      Get.snackbar('Permission Denied',
          'Please grant access to the gallery to pick an image.');
    }
  }
}