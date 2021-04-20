import 'package:dev_quiz/src/pages/home/widgets/quizCard/quiz_card_widget.dart';
import 'package:dev_quiz/src/pages/home/widgets/levelButton/level_button_widget.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
        Expanded(child: QuizCardWidget()),
      ],
    );
  }
}
