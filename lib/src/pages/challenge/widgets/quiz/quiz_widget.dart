import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_controller.dart';
import 'package:dev_quiz/src/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  final VoidCallback onChange;
  const QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController quizController = Get.put(QuizController());

    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          for (var i = 0; i < question.answers.length; i++)
            Obx(
              () {
                return AnswerWidget(
                  answer: question.answers[i],
                  isSelected: quizController.indexSelected.value == i,
                  onTap: () {
                    quizController.indexSelected.value = i;
                    Future.delayed(Duration(seconds: 1))
                        .then((value) => onChange());
                  },
                );
              },
            )
        ],
      ),
    );
  }
}
