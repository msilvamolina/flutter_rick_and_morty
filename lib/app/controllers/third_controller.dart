import 'package:get/get.dart';
import 'second_controller.dart';
import '../data/models/episode/episode.dart';

class ThirdController extends GetxController {
  final secondController = Get.find<SecondController>();
  Episode? episode;

  @override
  void onInit() {
    if (Get.arguments != null) {
      episode = Get.arguments as Episode;
    }
    super.onInit();
  }
}
