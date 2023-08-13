import 'package:flutter/material.dart';
import 'package:flutter_getx/countertimer.dart';
import 'package:flutter_getx/getxFavouriteapp/favouritescreen.dart';
import 'package:flutter_getx/getxSlider/slider.dart';
import 'package:flutter_getx/getxcounter/counter.dart';
import 'package:flutter_getx/getxloginapi/loginscreen.dart';
import 'package:flutter_getx/getxswitchbutton/switchbutton.dart';
import 'package:flutter_getx/homescreen.dart';
import 'package:flutter_getx/imagepicker/imagepickerscreen.dart';
import 'package:flutter_getx/languages.dart';
import 'package:flutter_getx/languagescreen.dart';
import 'package:flutter_getx/screenone.dart';
import 'package:flutter_getx/screentwo.dart';
import 'package:get/get.dart';

import 'getx_apicall/testingapiscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale("en", "Us"),
      translations: Languages(),
      fallbackLocale: Locale("en", "Us"),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/screenone", page: () => ScreenOne()),
        GetPage(name: "/languagescreen", page: () => LanguageScreen()),
        GetPage(name: "/countertimerscreen", page: () => CounterTimeScreen()),
        GetPage(name: "/counterscreen", page: () => CounterScreen()),
        GetPage(name: "/sliderscreen", page: () => SliderScreen()),
        GetPage(name: "/switchbutton", page: () => SwitchButton()),
        GetPage(name: "/favouritescreen", page: () => FavouriteScreen()),
        GetPage(name: "/imagepicker", page: () => ImagePickerScreen()),
        GetPage(name: "/imagepicker", page: () => ImagePickerScreen()),
        GetPage(name: "/loginscreen", page: () => LoginScreen()),
        GetPage(name: "/testingapiscreen", page: () => TestingApiScreen()),
        GetPage(
            name: "/screentwo",
            page: () => ScreenTwo(
                  argReceived: null,
                )),
      ],
    );
  }
}
