import '../bindings/third_binding.dart';
import '../ui/pages/third_page.dart';
import '../bindings/second_binding.dart';
import '../ui/pages/second_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/home_binding.dart';
import '../ui/pages/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SECOND,
      page: () => SecondPage(),
      binding: SecondBinding(),
    ),
    GetPage(
      name: AppRoutes.THIRD,
      page: () => ThirdPage(),
      binding: ThirdBinding(),
    ),
  ];
}
