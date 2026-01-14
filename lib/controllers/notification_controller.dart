import 'package:get/get.dart';

class notification_controller extends GetxController {
  RxBool notify = false.obs;

  setNotification(bool value) {
    notify.value = value;
  }
}
