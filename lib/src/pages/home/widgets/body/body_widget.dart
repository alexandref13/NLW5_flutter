import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/home/widgets/body/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Container(
                  height: 32,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.levelButtonFacil,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppColors.levelButtonBorderFacil,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Fácil',
                      style: GoogleFonts.notoSans(
                        color: AppColors.levelButtonTextFacil,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 32,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.levelButtonMedio,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppColors.levelButtonBorderMedio,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Médio',
                      style: GoogleFonts.notoSans(
                        color: AppColors.levelButtonTextMedio,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 32,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.levelButtonDificil,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppColors.levelButtonBorderDificil,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Difícil',
                      style: GoogleFonts.notoSans(
                        color: AppColors.levelButtonTextDificil,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 32,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.levelButtonPerito,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppColors.levelButtonBorderPerito,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Perito',
                      style: GoogleFonts.notoSans(
                        color: AppColors.levelButtonTextPerito,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: QuizWidget()),
      ],
    );
  }
}
