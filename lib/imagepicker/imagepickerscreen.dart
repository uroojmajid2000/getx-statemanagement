import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/imagepicker/imagepickercontroller.dart';
import 'package:get/get.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    final ImagePickerController imageController =
        Get.put(ImagePickerController());
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("ImagePickerScreen getx"),
        ),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imageController.ImagePath.isNotEmpty
                      ? FileImage(File(imageController.ImagePath.toString()))
                      : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  imageController.getImage();
                },
                child: Text("Image pick"),
              )
            ],
          ),
        ));
  }
}
