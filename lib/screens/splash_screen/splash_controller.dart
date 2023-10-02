import 'package:get/get.dart';
import 'package:vibgyo/screens/welcome_screen/welcome_screen.dart';

class SplashController extends GetxController {




  splashOn() {
    Future.delayed(
      Duration(seconds: 2),
      () async {
        Get.to(WelcomeScreen());
      },
    );
  }

  @override
  void onInit() {
    splashOn();
    super.onInit();
  }
}
