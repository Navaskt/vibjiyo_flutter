import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/screens/dashboard_screen/dashboard.dart';
import 'package:vibgyo/screens/interest_selection_screen/intrest_selection_controller.dart';
import '../../constants/colorconstants.dart';
import '../../constants/text_styles.dart';
import '../../widgets/customButton.dart';

class InterestSelectionScreen extends StatelessWidget {
   InterestSelectionScreen({super.key});

  final InterestSelectionController interestSelectionController = Get.put(InterestSelectionController());

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
            Obx(() => Column(
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
                    GestureDetector(
                      onTap: () {
                        interestSelectionController.selected.value = 'LGBTQ';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border:
                          interestSelectionController.selected.value == 'LGBTQ'
                              ? Border.all(
                            color: Colors.red,
                            width: 2.5,
                          )
                              : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
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
                                  interestSelectionController.selected.value == 'LGBTQ'?
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
                        interestSelectionController.selected.value = 'MAN';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: interestSelectionController.selected.value == 'MAN'
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
                                  interestSelectionController.selected.value == 'MAN' ?
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
                        interestSelectionController.selected.value = 'WOMAN';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: interestSelectionController.selected.value == 'WOMAN'
                              ? Border.all(color: Colors.red, width: 2.5)
                              : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
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
                                  interestSelectionController.selected.value == 'WOMAN' ?
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
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        interestSelectionController.selected.value = 'EVERYONE';
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: interestSelectionController.selected.value == 'EVERYONE'
                              ? Border.all(color: Colors.red, width: 2.5)
                              : Border.all(color: ColorConstant.bordercolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.people_alt,color: Colors.purple,),
                                  Text(' Everyone'),
                                ],
                              ),
                              Row(
                                children: [
                                  interestSelectionController.selected.value == 'EVERYONE' ?
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
