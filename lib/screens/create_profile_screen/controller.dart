import 'package:get/get.dart';

class ProfileCtreateController extends GetxController{

  var obscureText = true.obs;
  var dob = 'Choose birthday date'.obs;

  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

}