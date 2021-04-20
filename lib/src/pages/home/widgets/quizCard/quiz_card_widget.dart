import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/home/widgets/quizCard/container_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.count(
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          children: [
            containerWidget(
              'Gerenciamento de Estado',
              AppImages.data,
              "3 de 10",
            ),
            containerWidget(
              'Construindo Interfaces',
              AppImages.laptop,
              "10 de 10",
            ),
            containerWidget(
              'Integração Nativa',
              AppImages.hierarchy,
              "9 de 10",
            ),
            containerWidget(
              'Widgets do Flutter',
              AppImages.data,
              "5 de 10",
            ),
          ],
        ),
      ),
    );
  }
}
