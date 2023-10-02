import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/screens/phone_verification_screen/phone_verification_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My mobile',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Please enter your valid phone number. We will send you a 4-digit code to verify your account.',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Container(
                    //   height: 65,
                    //   width: 331,
                    //   decoration: BoxDecoration(
                    //     border: Border.all( // Use Border.all to define a border
                    //       color: Color(
                    //           0xFFE8E6EA), // Border color
                    //       width: 1.5, // Border width
                    //     ),
                    //     borderRadius: BorderRadius.circular(15)
                    //   ),
                    //   child: Row(
                    //     children: [
                    //
                    //     ],
                    //   ),
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder:  OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(
                                0xFFE8E6EA),// Change the border color to blue
                            width: 1.5, // Border width
                          ),
                          borderRadius: BorderRadius.circular(15), // Border radius
                        ),

                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(PhoneVerificationScreen());
                      },
                      child: CustomButton('Continue')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
