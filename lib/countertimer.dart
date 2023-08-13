import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterTimeScreen extends StatefulWidget {
  const CounterTimeScreen({super.key});

  @override
  State<CounterTimeScreen> createState() => _CounterTimeScreenState();
}

class _CounterTimeScreenState extends State<CounterTimeScreen> {
  int x = 0;
  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("COUNTER tIMER"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ));
  }
}
