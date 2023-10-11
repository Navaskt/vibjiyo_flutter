import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/custom_text_formfield.dart';
import 'package:vibgyo/screens/phone_verification_screen/verification_controller.dart';
import 'package:vibgyo/screens/welcome_screen/welcome_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class PhoneVerificationScreen extends StatelessWidget {
   PhoneVerificationScreen({super.key});

  final VerificationController verificationController = Get.put(VerificationController());

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
                    Obx(
                          () => Visibility(
                        visible: verificationController.isOtpSent.value,
                        child: SizedBox(
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              4,
                                  (index) => SizedBox(
                                height: 70,
                                width: 66,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  // controller:
                                  // AuthController.instance.otpController[index],
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    if (value.length == 1 && index <= 3) {
                                      FocusScope.of(context).nextFocus();
                                    } else if (value.isNotEmpty && index > 0) {
                                      FocusScope.of(context).previousFocus();
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: '*'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
