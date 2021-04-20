import 'package:dev_quiz/src/pages/challenge/widgets/questionIndicator/question_indicator_widget.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: ' O que o Flutter faz em sua totalidade?',
      ),
    );
  }
}
