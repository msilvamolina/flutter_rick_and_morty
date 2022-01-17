import 'package:get/get.dart';

import '../controllers/third_controller.dart';

class ThirdBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ThirdController>(ThirdController());
  }
}
