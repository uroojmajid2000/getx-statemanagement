import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var argReceived;
  ScreenTwo({super.key, required this.argReceived});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two" + Get.arguments[0]),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: Text("go back to home screen"))
        ],
      ),
    );
  }
}
