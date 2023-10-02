import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/screens/phone_number_screen/phone_number_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';
import '../../constants/image_constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: welcomecircle,
                )),
              ),
              const Text(
                'Let’s get closer!',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'The best place to \nmeet your perfect \nmatch.',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(PhoneScreen());
                    },
                    child: CustomButton('Explore Now'),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
