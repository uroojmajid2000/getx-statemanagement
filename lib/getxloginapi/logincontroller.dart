import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginDataController extends GetxController {
  // final counter = 0.obs;

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
//form data
  void LoginApi() async {
    try {
      final response = await post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          "email": emailController.value.text,
          "password": passwordController.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print("------------");
      print(data);
      if (response.statusCode == 200) {
        Get.snackbar("congratulations", "Login Successful");
      } else {
        Get.snackbar("unsucessful", "Login failed");
      }
    } catch (e) {
      Get.snackbar("exceptiom", e.toString());
    }
  }

//rawdata api
  // void LoginApi() async {
  //   try {
  //     Map newData = {
  //       "email": emailController.value.text,
  //       "password": passwordController.value.text,
  //     };
  //     final response = await post(Uri.parse("https://reqres.in/api/login"),
  //         body: jsonEncode(newData));
  //     var data = jsonDecode(response.body);
  //     print("------------");
  //     print(data);
  //     if (response.statusCode == 200) {
  //       Get.snackbar("congratulations", "Login Successful");
  //     } else {
  //       Get.snackbar("unsucessful", "Login failed");
  //     }
  //   } catch (e) {
  //     Get.snackbar("exceptiom", e.toString());
  //   }
  // }
}
