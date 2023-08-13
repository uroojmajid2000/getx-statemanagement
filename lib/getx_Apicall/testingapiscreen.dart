import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_apicall/testingapicontroller.dart';
import 'package:flutter_getx/getxcounter/countercontroller.dart';
import 'package:flutter_getx/getxloginapi/logincontroller.dart';
import 'package:get/get.dart';

class TestingApiScreen extends StatefulWidget {
  const TestingApiScreen({super.key});

  @override
  State<TestingApiScreen> createState() => _TestingApiScreenState();
}

class _TestingApiScreenState extends State<TestingApiScreen> {
  @override
  Widget build(BuildContext context) {
    final TestingApiController testingApiController =
        Get.put(TestingApiController());
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("TestingApiScreen  Screen getx"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: testingApiController.userList.length,
                    itemBuilder: (context, index) {
                      var user = testingApiController.userList[index];
                      return ListTile(
                        title: Text(user.firstName + ' ' + user.lastName),
                        subtitle: Text(user.email),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar),
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            testingApiController.GetApiCall();
          },
        ));
  }
}
