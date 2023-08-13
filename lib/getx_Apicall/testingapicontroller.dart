import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_Apicall/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class TestingApiController extends GetxController {
  var userList = <UserModel>[].obs;
  RxBool loading = false.obs;

  void GetApiCall() async {
    try {
      loading.value = true;
      final response = await get(
        Uri.parse("https://reqres.in/api/users?page=2"),
      );

      if (response.statusCode == 200) {
        loading.value = false;
        var data = jsonDecode(response.body);
        List<UserModel> users = [];
        for (var userData in data['data']) {
          users.add(UserModel.fromJson(userData));
        }
        userList.assignAll(users);
        Get.snackbar("Congratulations", "API Call Successful");
      } else {
        loading.value = false;
        Get.snackbar("unsucessful", "Login failed");
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("exceptiom", e.toString());
    }
  }
}
