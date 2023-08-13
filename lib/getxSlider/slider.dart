import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx/getxSlider/slidercontroller.dart';
import 'package:flutter_getx/getxcounter/countercontroller.dart';
import 'package:get/get.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    final Controller cunterController = Get.put(Controller());
    final SliderController sliderController = Get.put(SliderController());

    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("Slider Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Obx(
              () => Container(
                width: 200,
                height: 200,
                color: Colors.red.withOpacity(sliderController.opacity.value),
                child: Text(
                  cunterController.counter.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )),
            Center(
              child: Obx(() => Slider(
                  value: sliderController.opacity.value,
                  onChanged: (Value) {
                    sliderController.setOpacity(Value);
                  })),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            cunterController.incrementCounter();
          },
        ));
  }
}
