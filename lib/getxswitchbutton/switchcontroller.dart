import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool onNotification = false.obs;
  setNotification(bool value) {
    onNotification.value = value;
  }
}
