import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitsList = ["Orange", "mango", "banana", "apple"].obs;
  RxList tempList = [].obs;
  fruitsAdd(String value) {
    tempList.add(value);
  }

  fruitsRemove(String value) {
     tempList.remove(value);
  }
}
