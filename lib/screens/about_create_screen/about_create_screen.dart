import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/about_create_screen/about_create_controller.dart';
import 'package:vibgyo/screens/upload_photo_screen/upload_photo_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

class AboutCreateScreen extends StatelessWidget {
  AboutCreateScreen({super.key});

  TextEditingController aboutController = TextEditingController();
  TextEditingController voiceTextController = TextEditingController();

  AboutCreateController aboutCreateController =
      Get.put(AboutCreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: aboutController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText:
                          'Write down about yourself in less than 500 words....',
                      hintStyle:
                          const TextStyle(color: ColorConstant.bordercolor),
                      labelText: 'about me',
                      labelStyle: const TextStyle(
                        color: ColorConstant.bordercolor,
                      ),
                      border: const OutlineInputBorder()),
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: voiceTextController,
                  readOnly: true,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          recordingScreen(context);
                        },
                        icon: const Icon(Icons.mic),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorConstant.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText:
                          'This voice note will be accessible to the public on your profile.',
                      hintStyle:
                          const TextStyle(color: ColorConstant.bordercolor),
                      labelText: 'Upload Voice',
                      labelStyle: const TextStyle(
                        color: ColorConstant.bordercolor,
                      ),
                      border: const OutlineInputBorder()),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '*Maximum recorded time 1 minitue',
                  style: TextingStyle.font12normal,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {

                      Get.to(UploadPhotoScreen());
                    },
                    child: CustomButton('Save'),),
                const SizedBox(
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  recordingScreen(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Obx(
            () => SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  aboutCreateController.audioPath== '' ?
                  IconButton(
                      onPressed: () {
                        if (aboutCreateController.isRecording.value == true) {
                          aboutCreateController.stopRecording();
                          // recordController.stopTimer();
                        } else {
                          if (aboutCreateController.audioPath.isNotEmpty) {
                            aboutCreateController.resetTimer();
                            aboutCreateController.startRecording();
                            aboutCreateController.startTimer();
                          } else {
                            aboutCreateController.startRecording();
                            aboutCreateController.startTimer();
                          }
                        }
                      },
                      icon: aboutCreateController.isRecording.value == true
                          ? const Icon(Icons.stop_circle)
                          : const Icon(Icons.mic)):
                      SizedBox(),
                  Text(
                    '${aboutCreateController.minutes.value.toString().padLeft(2, '0')}:${aboutCreateController.seconds.value.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 25),
                  ),
                    aboutCreateController.audioPath== '' ?
                        const SizedBox():
                  IconButton(
                    onPressed: () {
                      aboutCreateController.resetTimer();
                      aboutCreateController.playRcording();
                    },
                    icon:const Icon( Icons.play_arrow,color: Colors.green,)
                   ),
                  aboutCreateController.audioPath== '' ?
                  const SizedBox():
                  IconButton(
                      onPressed: () {
                        aboutCreateController.audioPath.value = '';
                        aboutCreateController.totalDuration.value = 0;
                        aboutCreateController.minutes.value = 0;
                        aboutCreateController.seconds.value= 0;
                      },
                      icon:const Icon(Icons.delete,color: Colors.red,)
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'Back',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                voiceTextController.text = "00:0${aboutCreateController.totalDuration.value.toString()} sec";
                Get.back();
                // aboutCreateController.audioPath.value='';
                // aboutCreateController.minutes.value = 0;
                // aboutCreateController.seconds.value= 0;
              },
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
