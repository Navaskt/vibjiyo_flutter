import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/about_create_screen/about_create_controller.dart';
import 'package:vibgyo/screens/upload_photo_screen/upload_photo_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui' as ui show Gradient;

class AboutCreateScreen extends StatelessWidget {
  AboutCreateScreen({super.key});

  TextEditingController aboutController = TextEditingController();
  TextEditingController voiceTextController = TextEditingController();

  PlayerController controller = PlayerController();

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
                const Text('    Record voice',
                    style: TextingStyle.font12normalbordercolor),
                Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: ColorConstant.bordercolor,
                      ),),
                  child:
                    Row(
                      children: [
                        IconButton(onPressed: () {
                          recordingScreen(context);
                        }, icon: Icon(Icons.mic))
                      ],
                    )
                  // AudioFileWaveforms(
                  //     size: Size(MediaQuery.of(context).size.width, 100.0),
                  //     playerController: controller,
                  //     enableSeekGesture: true,
                  //     waveformType: WaveformType.long,
                  //     waveformData: [],
                  //     playerWaveStyle: const PlayerWaveStyle(
                  //         fixedWaveColor: Colors.white54,
                  //         liveWaveColor: Colors.blueAccent,
                  //         spacing: 6,
                  //
                  //     ),
                  //
                  // ),
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
                  child: CustomButton('Save'),
                ),
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
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Obx(
            () => SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  aboutCreateController.audioPath == ''
                      ? Container(
                          height: 39,
                          width: 39,
                          decoration: BoxDecoration(
                            color: ColorConstant.bordercolor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {
                                  if (aboutCreateController.isRecording.value ==
                                      true) {
                                    aboutCreateController.stopRecording();
                                    aboutCreateController.resetTimer();

                                    // recordController.stopTimer();
                                  } else {
                                    if (aboutCreateController
                                        .audioPath.isNotEmpty) {
                                      aboutCreateController.resetTimer();
                                      aboutCreateController.startRecording();
                                      aboutCreateController.startTimer();
                                    } else {
                                      aboutCreateController.startRecording();
                                      aboutCreateController.startTimer();
                                      aboutCreateController.tap.value = true;
                                    }
                                  }
                                },
                                icon: aboutCreateController.isRecording.value ==
                                        true
                                    ? const Icon(Icons.stop_circle)
                                    : const Icon(Icons.mic)),
                          ),
                        )
                      : const SizedBox(),
                  Text(
                    aboutCreateController.tap.value == true
                        ? '${aboutCreateController.minutes.value.toString().padLeft(2, '0')}:${aboutCreateController.seconds.value.toString().padLeft(2, '0')}'
                        : ' Tap here to record audio',
                    style: const TextStyle(fontSize: 18),
                  ),
                  aboutCreateController.audioPath == ''
                      ? const SizedBox()
                      : Container(
                          height: 39,
                          width: 39,
                          decoration: BoxDecoration(
                              color: ColorConstant.bordercolor,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                              onPressed: () {
                                aboutCreateController.pauseButtonPress();
                                print(aboutCreateController.isPlaying.value);
                                if (aboutCreateController.isPlaying.value ==
                                    false) {
                                  aboutCreateController.playRcording();
                                } else {
                                  aboutCreateController.stopTimer();
                                  aboutCreateController.audioPlayer.pause();
                                }
                              },
                              icon: aboutCreateController.isPlaying.value
                                  ? const Icon(
                                      Icons.play_arrow,
                                      color: Colors.green,
                                    )
                                  : const Icon(
                                      Icons.pause,
                                    )),
                        ),
                  aboutCreateController.audioPath == ''
                      ? const SizedBox()
                      : IconButton(
                          onPressed: () {
                            aboutCreateController.audioPlayer.stop();
                            aboutCreateController.audioPath.value = '';
                            aboutCreateController.totalDuration.value = 0;
                            aboutCreateController.minutes.value = 0;
                            aboutCreateController.seconds.value = 0;
                            aboutCreateController.tap.value = false;
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                aboutCreateController.stopTimer();
                aboutCreateController.audioPlayer.stop();
                aboutCreateController.resetTimer();
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
                voiceTextController.text =
                    "00:0${aboutCreateController.totalDuration.value.toString()} sec";
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
