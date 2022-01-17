import 'package:get/get.dart';
import '../controllers/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SecondController>(SecondController());
  }
}
