import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx/getxcounter/countercontroller.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final Controller cunterController = Get.put(Controller());
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("COUNTER Screen getx"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Obx(
              () => Text(
                cunterController.counter.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            cunterController.incrementCounter();
          },
        ));
  }
}
