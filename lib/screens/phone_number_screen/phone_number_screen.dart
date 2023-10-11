import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/screens/phone_number_screen/country_picker_controller.dart';
import 'package:vibgyo/screens/phone_verification_screen/phone_verification_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class PhoneScreen extends StatelessWidget {
  PhoneScreen({super.key});

  final CountryPickerController countryPickerController =
      Get.put(CountryPickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Container(
                          height: 100,
                          width: 280,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: vibgyologo)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'My mobile',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Please enter your valid phone number. We will send you a 4-digit code to verify your account.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
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
                        Obx(
                          () => TextFormField(
                            keyboardType: TextInputType.number,
                            controller: countryPickerController.textController.value,
                            decoration: InputDecoration(
                              prefix: GestureDetector(
                                onTap: () {
                                  showCountryPicker(
                                    context: context,
                                    searchAutofocus: false,
                                    showPhoneCode:
                                    true, // optional. Shows phone code before the country name.
                                    onSelect: (Country country) {
                                        countryPickerController.code.value = country.phoneCode;
                                        // flag = country.flagEmoji;
                                        // print(countryPickerController.code.value);
                                        // print(flag);
                                    },
                                  );
                                },
                                child: SizedBox(
                                  // color: Colors.blue,
                                  width: 60,
                                  // width: MediaQuery.of(context).size.width/3.5,
                                  child: Row(children: [
                                    Text("+${countryPickerController.code.value}"),
                                    const Icon(Icons.arrow_drop_down),
                                  ]),
                                ),
                              ),
                              border:   OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: ColorConstant.bordercolor,
                                )
                              ),
                              errorText: countryPickerController.errorText.value,
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:   BorderSide(
                                  color: countryPickerController.errorColor.value,
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFE8E6EA),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFE8E6EA),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                countryPickerController.onSubmit(countryPickerController.textController.value.text);

                                // if (countryPickerController.isValid.value) {
                                //   // Perform the action on submit.
                                //   // You can replace this with your submit logic.
                                //   print('Form is valid. Submitting...');
                                // } else {
                                //   print('Form is invalid. Cannot submit.');
                                // }
                              },
                              child: CustomButton('Continue')),
                          const SizedBox(
                            height: 200,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
