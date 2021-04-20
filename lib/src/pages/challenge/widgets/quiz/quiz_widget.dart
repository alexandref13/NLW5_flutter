import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/challenge/widgets/anwser/anwser_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnwserWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
            isSelected: true,
            isRight: true,
          ),
          AnwserWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
          ),
          AnwserWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
          ),
          AnwserWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
          ),
        ],
      ),
    );
  }
}
