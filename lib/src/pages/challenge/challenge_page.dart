import 'package:dev_quiz/src/pages/challenge/challenge_controller.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/nextButton/next_button.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/questionIndicator/question_indicator_widget.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_controller.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_widget.dart';
import 'package:dev_quiz/src/pages/home/home_controller.dart';
import 'package:dev_quiz/src/shared/widgets/on_alert_button_pressed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChallengePage extends StatelessWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    ChallengeController challengeController = Get.put(ChallengeController());
    QuizController quizController = Get.put(QuizController());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Get.offNamed('/homePage');
              },
            ),
            QuestionIndicatorWidget(),
          ],
        )),
      ),
      body: Obx(() {
        return PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: challengeController.pageController,
          children: homeController.question
              .map(
                (e) => QuizWidget(
                  question: e,
                  onChange: challengeController.currentPage.value !=
                          homeController.question.length
                      ? challengeController.selectedAnswerAndNextpage
                      : challengeController.selectedAnswer,
                ),
              )
              .toList(),
        );
      }),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Obx(
          () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (challengeController.currentPage.value !=
                    homeController.question.length)
                  Expanded(
                      child: NextButtonWidget.white(
                    label: 'Pular',
                    onTap: quizController.indexSelected.value == -1
                        ? () {
                            challengeController.nextPage();
                          }
                        : () {
                            onAlertButtonPressed(
                              context,
                              'Voc?? n??o pular uma quest??o com uma resposta j?? selecionada!',
                            );
                          },
                  )),
                if (challengeController.currentPage.value ==
                    homeController.question.length)
                  Expanded(
                    child: NextButtonWidget.green(
                      label: 'Finalizar',
                      onTap: () {
                        quizController.indexSelected.value == -1
                            ? onAlertButtonPressed(context,
                                "Voc?? deve selecionar uma resposta para finalizar o quiz!")
                            : Get.offNamed('/completedPage');
                      },
                    ),
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
