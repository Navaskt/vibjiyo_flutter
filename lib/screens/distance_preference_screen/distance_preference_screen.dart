import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/interest_selection_screen/interest_selection_screen.dart';

import '../../constants/colorconstants.dart';
import '../../widgets/customButton.dart';
import 'distance_pref_controller.dart';

class DistancePreferenceScreen extends StatelessWidget {
  DistancePreferenceScreen({super.key});

  final DistancePreferenceController distancePreferenceController =
      Get.put(DistancePreferenceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(right: 30, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your distance\npreference?',
                  style: TextingStyle.font30bold,

                ),
                const SizedBox(height: 15,),
                const Text(
                  'Use the slider to set the maximum distance you would like potential matches to be located',
                  style: TextingStyle.font12normal,
                ),
                const SizedBox(
                  height: 80,
                ),
                Obx(()
                    => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Distance preference',
                          style: TextingStyle.font14bold,
                        ),
                        Text(distancePreferenceController.sliderValue.value.toStringAsFixed(2), style: TextingStyle.font14bold),
                      ],
                    ),
                ),
               Slider(value: distancePreferenceController.sliderValue.value, onChanged: distancePreferenceController.onSliderValueChanged,
               min: 0,
               max: 120,)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('You can change preferences later in Settings'),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(onTap: () {
                  Get.to(IntrestSelectionScreen());
                }, child: CustomButton('Next')),
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
