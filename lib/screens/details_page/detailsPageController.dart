import 'package:get/get.dart';

class DetailsPageController extends GetxController {
  RxBool like = false.obs;

  void likeProfile(currentVal) async {
    print(currentVal);
    like.value =! currentVal;
    print(like.value);
  }
}
