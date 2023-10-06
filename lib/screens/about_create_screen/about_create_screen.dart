import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/upload_photo_screen/upload_photo_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

class AboutCreateScreen extends StatelessWidget {
  const AboutCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                TextFormField(
                  decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:  ColorConstant.bordercolor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: ColorConstant.bordercolor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Write down about yourself in less than 500 words....',
                      hintStyle: const TextStyle(
                          color: ColorConstant.bordercolor
                      ),
                    labelText: 'about me',
                    labelStyle: const TextStyle(
                      color:  ColorConstant.bordercolor,
                    ),
                    border: const OutlineInputBorder()
                  ),
                  maxLines: 4,
                ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      suffixIcon: Icon(Icons.mic_none),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color:  ColorConstant.bordercolor,
                            ),
                          borderRadius: BorderRadius.circular(15),
                        ),

                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: ColorConstant.bordercolor,
                            ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'This voice note will be accessible to the public on your profile.',
                        hintStyle: const TextStyle(
                          color: ColorConstant.bordercolor
                        ),
                        labelText: 'Upload Voice',
                        labelStyle: const TextStyle(
                          color:  ColorConstant.bordercolor,
                        ),
                        border: const OutlineInputBorder()
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('*Maximum recorded time 1 minitue',style: TextingStyle.font12normal,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(UploadPhotoScreen());
                      },
                      child: CustomButton('Save')),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
