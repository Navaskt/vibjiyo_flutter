import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyo/constants/colorconstants.dart';
import 'package:vibgyo/screens/gender_selection_screen/gender_selection_screen.dart';
import 'package:vibgyo/widgets/customButton.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Photos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 400,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorConstant.bordercolor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: EdgeInsets.all(8),
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/abstract-rainbow-background.jpg')),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Icon(Icons.add,size: 28,color: ColorConstant.white,) ,
                          ),
                        )
                        // Add additional widgets inside the stack if needed
                      ],
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                    Get.to(GenderSelectionScreen());
                    },
                    child: CustomButton('Save')),
                const SizedBox(
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
