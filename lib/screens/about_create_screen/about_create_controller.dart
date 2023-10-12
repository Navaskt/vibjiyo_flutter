import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:record/record.dart';
import 'package:get/get.dart';

class AboutCreateController extends GetxController{
  late StreamSubscription<PlayerState> playerStateSubscription;

  var isPlaying = false.obs;
  var tap = false.obs;
  late Record audioRecord;
  late AudioPlayer audioPlayer;
  RxBool isRecording = false.obs;
  RxString audioPath = "".obs;
  // final MaintainVisitController maintainController= Get.find();
  @override
  void onInit() {
    audioRecord = Record();
    audioPlayer = AudioPlayer();
    super.onInit();
  }

  @override
  void onClose() {
    audioRecord.dispose();
    audioPlayer.dispose();
    super.onClose();
  }

  Future<void> startRecording() async {
    try {
      if (await audioRecord.hasPermission()) {
        await audioRecord.start();
        isRecording.value = true;
      }
    } catch (e) {
      // print("error");
    }
  }
  RxInt totalDuration =0.obs;

  Future<void> stopRecording() async {
    try {
      String? path = await audioRecord.stop();
      pauseButtonPress();
      isRecording.value = false;
      audioPath.value = path!;
      // maintainController.audioPath.value = path;

      stopTimer();
      int minutesElapsed = minutes.value * 60;
      totalDuration.value = minutesElapsed + seconds.value;
      // maintainController.audioDuration.value = totalDuration.toString();

    } catch (e) {
      //  print("error $e");
    }
  }

  Future<void> playRcording() async {
    try {

      Source urlSourse = UrlSource(audioPath.value);
      await audioPlayer.play(urlSourse);
      startTimer();

      playerStateSubscription = audioPlayer.onPlayerStateChanged.listen((PlayerState state)  {
        if (state == PlayerState.completed) {
          playerStateSubscription.cancel();
          stopTimer();
          print('okey');
          pauseButtonPress();
          resetTimer();

        }
      });
    } catch (e) {
       print("error--------${e.toString()}");
    }
  }

  var minutes = 0.obs;
  var seconds = 0.obs;
  late Timer? _timer;
  bool isRunning = false;

  void startTimer() {
    if (!isRunning) {
      isRunning = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (seconds.value < 59) {
          seconds.value++;
        } else {
          seconds.value = 0;
          minutes.value++;
        }
      });
    }
  }

  void stopTimer() {
    if (isRunning) {
      isRunning = false;
      _timer!.cancel();
    }
  }

  void resetTimer() {
    isRunning = false;
    _timer!.cancel();
    minutes.value = 0;
    seconds.value = 0;
  }

  void pauseButtonPress() {
    isPlaying.value = !isPlaying.value;
  }

//  uploadAudio() async {
//   await HttpServices.performUploadAudio(audioPath.value);
// }
}