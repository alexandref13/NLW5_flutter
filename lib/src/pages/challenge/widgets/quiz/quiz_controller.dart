import 'package:get/get.dart';

class QuizController extends GetxController {
  var indexSelected = 0.obs;

  @override
  void onInit() {
    indexSelected(-1);
    super.onInit();
  }
}
