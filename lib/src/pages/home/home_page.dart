import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/home/home_controller.dart';
import 'package:dev_quiz/src/pages/home/home_state.dart';
import 'package:dev_quiz/src/pages/home/widgets/appBar/app_bar_widget.dart';
import 'package:dev_quiz/src/pages/home/widgets/quizCard/quiz_card_widget.dart';
import 'package:dev_quiz/src/pages/home/widgets/levelButton/level_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return controller.state.value == HomeState.success
            ? Scaffold(
                appBar: AppBarWidget(
                  user: controller.user!,
                ),
                body: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LevelButtonWidget(label: "Fácil"),
                          LevelButtonWidget(label: "Médio"),
                          LevelButtonWidget(label: "Difícil"),
                          LevelButtonWidget(label: "Perito"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: GridView.count(
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            crossAxisCount: 2,
                            children: controller.quizzes!
                                .map((e) => QuizCardWidget(
                                      title: e.title,
                                      image: e.image,
                                      percent: e.questionAnswered /
                                          e.question.length,
                                      question: e.question,
                                      questionAnswered: e.questionAnswered,
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Scaffold(
                body: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.darkGreen,
                    ),
                  ),
                ),
              );
      },
    );
  }
}
