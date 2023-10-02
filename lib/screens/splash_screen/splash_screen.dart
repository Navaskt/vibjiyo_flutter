import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/screens/splash_screen/splash_controller.dart';
import '../../constants/image_constants.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: bgImage),
                ),
              ),
              Positioned(
                bottom: 120,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
