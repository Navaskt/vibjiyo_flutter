import 'package:get/get.dart';

import '../introduction_screen/introduction_screen.dart';


class SplashController extends GetxController {




  splashOn() {
    Future.delayed(
      Duration(seconds: 2),
      () async {
        Get.to(IntroductionScreen());
      },
    );
  }

  @override
  void onInit() {
    splashOn();
    super.onInit();
  }
}
