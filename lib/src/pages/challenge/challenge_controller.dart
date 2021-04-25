import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChallengeController extends GetxController {
  QuizController quizController = Get.put(QuizController());

  var currentPage = 1.obs;
  var pageController = PageController();
  var answersRight = 0.obs;

  nextPage() {
    pageController.nextPage(
      duration: Duration(milliseconds: 50),
      curve: Curves.linear,
    );
    quizController.indexSelected.value = -1;
  }

  selectedAnswerAndNextpage(bool value) {
    if (value) {
      answersRight.value++;
    }
    print('respostas certas: ${answersRight.value}');
    nextPage();
  }

  selectedAnswer(bool value) {
    if (value) {
      answersRight.value++;
    }
    print('respostas certas: ${answersRight.value}');
  }

  @override
  void onInit() {
    pageController.addListener(() {
      currentPage.value = pageController.page!.toInt() + 1;
    });
    super.onInit();
  }
}
