import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("language changes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("message".tr),
          Text("name".tr),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("en", "Us"));
                  },
                  child: Text("ENGLISH")),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("ur", "pk"));
                  },
                  child: Text("urdu")),
            ],
          )
        ],
      ),
    );
  }
}
