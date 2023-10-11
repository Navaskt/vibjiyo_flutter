import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditController extends GetxController {
  RxString file = ''.obs;
  RxBool isLoad = false.obs;
  RxBool isFormValid = false.obs;
  RxBool submitReturn = false.obs;
  RxString message = ''.obs;
  var baseColor = Colors.red.obs;

  final ImagePicker _picker = ImagePicker();

  void takePhoto(source) async {
    final pickedFile = await _picker.pickImage(source: source);
    file.value = pickedFile!.path.toString();
    isLoad.value = true;
  }
  void submit(firstName, lastName, password, dob, aboutMe) async {
    if (firstName == '') {
      message.value = 'Please Enter First name';
      baseColor.value = Colors.red;
    } else if (lastName == '') {
      message.value = 'Please Enter Last name';
      baseColor.value = Colors.red;
    } else if (password == '') {
      message.value = 'Please Enter Password';
      baseColor.value = Colors.red;
    } else if (dob == '') {
      message.value = 'Please Enter Date of Birth';
      baseColor.value = Colors.red;
    } else if (aboutMe == '') {
      message.value = 'Please Enter about me';
      baseColor.value = Colors.red;
    } else {
      message.value = 'Validation Successful';
      baseColor.value = Colors.green;
    }
    submitReturn.value = true;
  }
}
