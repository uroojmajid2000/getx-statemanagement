import 'package:get/get.dart';

class Controller extends GetxController {
  final counter = 0.obs;
  incrementCounter() {
    counter.value++;
    
  }
}
