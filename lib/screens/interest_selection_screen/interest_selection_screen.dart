import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/screens/dashboard_screen/dashboard.dart';
import '../../constants/colorconstants.dart';
import '../../constants/text_styles.dart';
import '../../widgets/customButton.dart';

class IntrestSelectionScreen extends StatelessWidget {
  const IntrestSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Who are you interested in seeing?',
                  style: TextingStyle.font30bold,
                ),
                const Text(
                  'Select your interest here!',
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
                              icon: const Icon(
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
                const SizedBox(
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
                const SizedBox(
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
                const SizedBox(
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
                        Icon(Icons.people_alt),
                        Text(' Everyone'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                    Get.to(Dashboard());
                    },
                    child: CustomButton('Next'),),
                const SizedBox(
                  height: 120,
                )
                ],),
              ],
        ),
      ),
    );
  }
}
