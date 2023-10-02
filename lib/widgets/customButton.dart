import 'package:flutter/material.dart';

import '../constants/image_constants.dart';

Widget CustomButton(String name) {
  return Container(
    width: 290,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
     image: const DecorationImage(
         fit: BoxFit.fitWidth,
         image: buttonbacground)),
    child: Center(
        child: Text(
      name,
      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
    )),
  );
}
