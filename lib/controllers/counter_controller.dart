import 'package:get/get.dart';

class counterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
  }
}
