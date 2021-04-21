import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;
  const AnswerWidget({
    Key? key,
    required this.title,
    this.isRight = false,
    this.isSelected = false,
  }) : super(key: key);

  Color get selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
                  title,
                  style:
                      isSelected ? selectedTextStyleRight : AppTextStyles.body,
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
    );
  }
}
