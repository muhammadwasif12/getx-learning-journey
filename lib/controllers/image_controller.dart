import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class imageController extends GetxController {
  RxString imagepath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imagepath.value = image.toString();
    }
  }
}
