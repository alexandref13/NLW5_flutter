import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/home/home_controller.dart';
import 'package:dev_quiz/src/shared/widgets/progressIndicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../challenge_controller.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChallengeController challengeController = Get.put(ChallengeController());
    HomeController homeController = Get.put(HomeController());

    // var question = challengeController.currentPage.value + 1;

    return Obx(() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Questao ${challengeController.currentPage.value}',
                  style: AppTextStyles.body,
                ),
                Text(
                  'de ${homeController.question.length}',
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(
              value: challengeController.currentPage.value /
                  homeController.question.length,
            )
          ],
        ),
      );
    });
  }
}
