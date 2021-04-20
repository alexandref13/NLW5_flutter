import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/home/widgets/body/container_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  containerWidget(
                    'Gerenciamento de Estado',
                    AppImages.data,
                    "3 de 10",
                    .33,
                  ),
                  containerWidget(
                    'Construindo Interfaces',
                    AppImages.laptop,
                    "10 de 10",
                    1,
                  ),
                  containerWidget(
                    'Integração Nativa',
                    AppImages.data,
                    "9 de 10",
                    .9,
                  ),
                  containerWidget(
                    'Widgets do Flutter',
                    AppImages.data,
                    "5 de 10",
                    .5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
