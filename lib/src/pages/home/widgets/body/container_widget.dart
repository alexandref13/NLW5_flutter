import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

Widget containerWidget(String text, image, String hits, double percent) {
  return GestureDetector(
    onTap: () {
      print('ola');
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            Text(text, style: AppTextStyles.heading),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hits, style: AppTextStyles.body),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 21, right: 16),
                    child: LinearProgressIndicator(
                      value: percent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.chartPrimary,
                      ),
                      backgroundColor: AppColors.chartSecondary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
