import 'package:dev_quiz/src/pages/home/home_state.dart';
import 'package:dev_quiz/src/pages/shared/models/quiz_model.dart';
import 'package:dev_quiz/src/pages/shared/models/user_model.dart';
import 'package:get/get.dart';

import 'home_repository.dart';

class HomeController extends GetxController {
  var state = HomeState.empty.obs;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  getUsers() async {
    state.value = HomeState.loading;
    await Future.delayed(Duration(seconds: 1));
    user = await repository.getUser();
    state.value = HomeState.success;
  }

  getQuizzes() async {
    state.value = HomeState.loading;
    await Future.delayed(Duration(seconds: 1));
    quizzes = await repository.getQuizzes();
    state.value = HomeState.success;
  }

  @override
  void onInit() {
    getUsers();
    getQuizzes();
    super.onInit();
  }
}
