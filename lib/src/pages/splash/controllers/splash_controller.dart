import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  void timer() {
    Timer(Duration(seconds: 3), () => Get.toNamed('/homePage'));
  }

  @override
  void onInit() {
    timer();
    super.onInit();
  }
}
