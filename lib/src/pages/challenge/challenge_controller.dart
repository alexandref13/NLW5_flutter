import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChallengeController extends GetxController {
  var currentPage = 1.obs;
  var pageController = PageController();

  @override
  void onInit() {
    pageController.addListener(() {
      currentPage.value = pageController.page!.toInt() + 1;
    });
    super.onInit();
  }
}
