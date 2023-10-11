import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/screens/phone_verification_screen/phone_verification_screen.dart';

class CountryPickerController extends GetxController{


  var code = '91'.obs;
  // var countryCode = ''.obs;
  // var countryFlag = ''.obs;
  var isValid = RxBool(true);
  var textController = TextEditingController().obs;
  var errorText = ''.obs;
  var errorColor = ColorConstant.bordercolor.obs;


  void validateText() {
    // Example validation: Checking if the text is not empty.
    isValid.value = textController.value.text.isNotEmpty;
  }


  onSubmit(String text){
    if(text.isEmpty ){
      errorText.value = 'Please enter your number';
      errorColor.value = Colors.red;
    }else if (text.length < 10) {
      errorText.value = 'Please enter valid mobilenumber';
      errorColor.value = Colors.red;
    }else if (text.length == 10) {
      errorText.value = '';
      errorColor.value = ColorConstant.bordercolor;
      Get.to(PhoneVerificationScreen());

    }
    return null;
  }
  // validate(){
  //   textController.value.addListener(() {
  //     validateText(textController.value.text);
  //   });
  // }

  // @override
  // void onClose() {
  //   // Dispose of the text controller when the controller is closed.
  //   textController.value.dispose();
  //   super.onClose();
  // }
}