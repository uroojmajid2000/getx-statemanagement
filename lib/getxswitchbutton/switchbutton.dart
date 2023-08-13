import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getxswitchbutton/switchcontroller.dart';
import 'package:get/get.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    final SwitchController switchController = Get.put(SwitchController());

    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("SWITCH BUTTON"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Obx(() => Switch(
                  value: switchController.onNotification.value,
                  onChanged: (Value) {
                    switchController.setNotification(Value);
                  }))),
        ],
      ),
    );
  }
}
