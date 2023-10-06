import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/text_styles.dart';
import 'package:vibgyo/screens/create_profile_screen/create_profile_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

import '../../constants/image_constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 280,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: vibgyologo)),
                ),
              ),
               const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to Vibgyo',style: TextingStyle.font30bold,),
                  Text('Please follow these House Rules.',style: TextingStyle.font16normal,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Be yourself',style: TextingStyle.font18bold,),
                  Text('Make sure your photos, age, and bio are true to who you are.',style: TextingStyle.font16normal,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Stay safe',style: TextingStyle.font18bold,),
                  Text("Don't be too quick to give out personal information.",style: TextingStyle.font16normal,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Be proactive',style: TextingStyle.font18bold,),
                  Text("Always report bad behaviour.",style: TextingStyle.font16normal,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Be proactive',style: TextingStyle.font18bold,),
                  Text("Always report bad behaviour.",style: TextingStyle.font16normal,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(CreateProfileScreen());
                      },
                      child: CustomButton('I Agree'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
