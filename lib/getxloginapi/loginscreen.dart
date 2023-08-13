import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getxcounter/countercontroller.dart';
import 'package:flutter_getx/getxloginapi/logincontroller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final LoginDataController LoginController = Get.put(LoginDataController());
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Login  Screen getx"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: LoginController.emailController.value,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: LoginController.passwordController.value,
              decoration: InputDecoration(hintText: "password"),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  LoginController.LoginApi();
                },
                child: Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}
