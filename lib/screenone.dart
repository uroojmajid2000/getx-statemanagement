import 'package:flutter/material.dart';
import 'package:flutter_getx/screentwo.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                // Get.to(ScreenTwo());
                Get.toNamed("/screentwo", arguments: ["data1", "data2"]);
              },
              child: Text("move to screen two"))
        ],
      ),
    );
  }
}
