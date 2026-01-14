import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FavController extends GetxController {
  List<String> fruitList = [
    'orange',
    'apple',
    'mango',
    'pineApple',
    'banana',
  ].obs;
  List tempFruitList = [].obs;

  addtoFav(String value) {
    tempFruitList.add(value);
  }

  removetoFav(String value) {
    tempFruitList.remove(value);
  }
}
