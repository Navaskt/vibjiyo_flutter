import 'package:get/get.dart';

import '../introduction_screen/introduction_screen.dart';


class SplashController extends GetxController {




  splashOn() {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        Get.offAll(const IntroductionScreen());
      },
    );
  }

  @override
  void onInit() {
    splashOn();
    super.onInit();
  }
}
