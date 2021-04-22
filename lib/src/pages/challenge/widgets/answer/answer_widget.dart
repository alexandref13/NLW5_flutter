import 'package:dev_quiz/src/pages/challenge/widgets/quiz/quiz_controller.dart';
import 'package:flutter/material.dart';

import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/shared/models/answer_model.dart';
import 'package:get/get.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final bool isSelected;
  final VoidCallback onTap;
  const AnswerWidget({
    Key? key,
    required this.answer,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  Color get selectedColorRight =>
      answer.isRights ? AppColors.darkGreen : AppColors.darkRed;

  Color get selectedBorderRight =>
      answer.isRights ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedColorCardRight =>
      answer.isRights ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedBorderCardRight =>
      answer.isRights ? AppColors.green : AppColors.red;

  TextStyle get selectedTextStyleRight =>
      answer.isRights ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get selectedIconRight => answer.isRights ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    QuizController quizController = Get.put(QuizController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: GestureDetector(
        onTap: quizController.indexSelected.value == -1 ? onTap : () {},
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: isSelected ? selectedColorCardRight : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(
                color: isSelected ? selectedBorderCardRight : AppColors.border,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    answer.title,
                    style: isSelected
                        ? selectedTextStyleRight
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(500),
                    border: isSelected
                        ? Border.fromBorderSide(
                            BorderSide(
                              color: isSelected
                                  ? selectedBorderRight
                                  : AppColors.border,
                            ),
                          )
                        : null,
                  ),
                  child: isSelected
                      ? Icon(
                          selectedIconRight,
                          color: AppColors.white,
                          size: 16,
                        )
                      : Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
