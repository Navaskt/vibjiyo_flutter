import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/distance_preference_screen/distance_preference_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

class GenderSelectionScreen extends StatelessWidget {
  const GenderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 35, right: 35, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'I am a',
                  style: TextingStyle.font30bold,
                ),
                const Text(
                  'Select your gender here!',
                  style: TextingStyle.font12normal,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.bordercolor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/download (3) 1.png",
                              width: 19,
                              height: 13,
                            ),
                            const Text(
                              '  LGBTQIA+',
                              style: TextingStyle.font14bold,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: ColorConstant.bordercolor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.bordercolor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.male),
                            Text('Man'),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/abstract-rainbow-background.jpg')),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.check,
                                color: ColorConstant.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.bordercolor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      children: [
                        Icon(Icons.female),
                        Text('Woman'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.bordercolor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Text('  Show my gender  on my profile'),
                ]),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(DistancePreferenceScreen());
                    },
                    child: CustomButton('Next')),
                SizedBox(
                  height: 120,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
