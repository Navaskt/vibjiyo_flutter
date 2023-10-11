import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/distance_preference_screen/distance_preference_screen.dart';
import 'package:vibgyo/screens/gender_selection_screen/controller.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class GenderSelectionScreen extends StatelessWidget {
  GenderSelectionScreen({super.key});

  final GenderSelectionController genderSelectionController =
      Get.put(GenderSelectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
               () =>
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
                    GestureDetector(
                      onTap: () {
                        genderSelectionController.selected.value = 'LGBTQ';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border:
                              genderSelectionController.selected.value == 'LGBTQ'
                                  ? Border.all(
                                      color: Colors.red,
                                      width: 2.5,
                                    )
                                  : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
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
                                  genderSelectionController.selected.value == 'LGBTQ'?
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
                                  ):
                                       const SizedBox(),
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
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        genderSelectionController.selected.value = 'MAN';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: genderSelectionController.selected.value == 'MAN'
                              ? Border.all(color: Colors.red, width: 2.5)
                              : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.male,color: Colors.lightBlue,),
                                  Text('Man'),
                                ],
                              ),
                              Row(
                                children: [
                                  genderSelectionController.selected.value == 'MAN' ?
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
                                  ):
                                      const SizedBox()
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        genderSelectionController.selected.value = 'WOMAN';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: genderSelectionController.selected.value == 'WOMAN'
                              ? Border.all(color: Colors.red, width: 2.5)
                              : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.female,color: Colors.deepOrange,),
                                  Text('Woman'),
                                ],
                              ),
                              Row(
                                children: [
                                  genderSelectionController.selected.value == 'WOMAN' ?
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
                                  ):
                                      const SizedBox(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

            ),
            Obx(
               () =>
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      genderSelectionController.boxColor.value ?
                      GestureDetector(
                        onTap: genderSelectionController.changeBox,
                        child:  Container(
                   height: 25,
                   width: 25,
                   decoration:  BoxDecoration(
                       border: Border.all(color: Colors.white),
                       borderRadius: BorderRadius.circular(5),
                       image: const DecorationImage(
                           fit: BoxFit.fill,
                           image: rainbow)
                   ),
                   child: const Icon(Icons.check,color: Colors.white,),
                 ),
                      ):
                          GestureDetector(
                            onTap:  genderSelectionController.changeBox,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(color: ColorConstant.bordercolor),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                      const Text('  Show my gender  on my profile'),
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(DistancePreferenceScreen());
                      },
                      child: CustomButton('Next'),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
