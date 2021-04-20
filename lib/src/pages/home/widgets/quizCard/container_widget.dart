import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/shared/widgets/progressIndicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget containerWidget(String text, image, String hits) {
  return GestureDetector(
    onTap: () {
      Get.toNamed('/challengePage');
    },
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
            image,
            height: 40,
            width: 40,
          ),
          SizedBox(
            height: 24,
          ),
          Text(text, style: AppTextStyles.heading15),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(hits, style: AppTextStyles.body11),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 21, right: 16),
                  child: ProgressIndicatorWidget(
                    value: 0.3,
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
