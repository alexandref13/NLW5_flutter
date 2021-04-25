import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/pages/challenge/challenge_controller.dart';
import 'package:dev_quiz/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    final ChallengeController challengeController =
        Get.put(ChallengeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 120, left: 60, right: 58),
                child: Image.asset('assets/images/illustration.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 16),
                child: Center(
                  child: Text(
                    'Parabéns!',
                    style: AppTextStyles.heading40,
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 80),
                  width: 189,
                  child: Column(
                    children: [
                      Text(
                        'Você concluiu',
                        style: AppTextStyles.body,
                      ),
                      Text(
                        homeController.title.value,
                        style: AppTextStyles.bodyBold,
                      ),
                      Text(
                        'com ${challengeController.answersRight.value} de ${homeController.length.value} acertos.',
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 68),
                  height: 48,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.purple),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    child: Text('Compatilhar', style: AppTextStyles.title),
                    onPressed: () {
                      Share.share(
                          'DevQuiz NLW 5 - Flutter: Resultado do Quiz \n${homeController.title.value}\nObtive: ${challengeController.answersRight.value / homeController.length.value}% aproveitamento');
                    },
                  ),
                ),
              ),
              Container(
                width: 110,
                child: TextButton(
                  child: Text(
                    'Voltar ao inicio',
                    style: AppTextStyles.bodyBold,
                  ),
                  onPressed: () {
                    Get.offNamed('/homePage');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
