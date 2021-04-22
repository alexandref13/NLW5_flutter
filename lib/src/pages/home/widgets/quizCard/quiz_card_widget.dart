import 'package:flutter/material.dart';

import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/shared/widgets/progressIndicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final int questionAnswered;
  final List question;
  final double percent;
  final VoidCallback onTap;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.questionAnswered,
    required this.question,
    required this.percent,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border,
            ),
          ),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/$image.png',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 24,
            ),
            Text(title, style: AppTextStyles.heading15),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$questionAnswered de ${question.length}',
                    style: AppTextStyles.body11),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 21, right: 16),
                    child: ProgressIndicatorWidget(
                      value: percent,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
