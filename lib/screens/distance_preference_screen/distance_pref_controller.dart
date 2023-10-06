import 'package:get/get.dart';

class DistancePreferenceController extends GetxController{

  var sliderValue = 20.0.obs; // Observable for lower value
 // Observable for upper value

  void onSliderValueChanged(double value) {
    sliderValue.value = value;
  }



}