import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/custom_text_formfield.dart';
import 'package:vibgyo/screens/welcome_screen/welcome_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 280,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: vibgyologo)),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter your code',
                      style: TextStyle(
                        fontSize: 34,
                      ),
                    ),
                    const Text(
                      "Type the verification code\n we’ve sent you",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 66,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 66,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 66,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 66,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Didn’t receive a code? '),
                        Text('Resend',style: TextStyle(color: Colors.red),)
                      ],
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                      Get.to(WelcomeScreen());
                      },
                      child: CustomButton('Verify')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
