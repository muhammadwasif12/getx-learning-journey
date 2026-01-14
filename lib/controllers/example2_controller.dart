import 'package:get/get.dart';

class example2controller extends GetxController {
  RxDouble opactiy = .4.obs;

  setOpacity(double value) {
    opactiy.value = value;
  }
}
