import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class ProfileCreateController extends GetxController{

  var obscureText = true.obs;
  var imagePath = ''.obs;
  var dob = 'Choose birthday date'.obs;


  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }


  pickedImage(context, source) async {
    final image =
    await ImagePicker().pickImage(source: source, imageQuality: 80);

    try {
      if (image != null) {
        imagePath.value = image.path;
      }
    } on PlatformException catch (e) {
      Get.snackbar('Permission Denied',
          'Please grant access to the gallery to pick an image.');
    }
  }

}




