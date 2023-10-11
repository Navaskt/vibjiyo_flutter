import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderSelectionController extends GetxController {
  var boxColor = false.obs;
  RxString selected = "".obs;

  void changeBox() {
    boxColor.value = !boxColor.value;
  }
}
