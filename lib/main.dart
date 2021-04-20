import 'package:dev_quiz/src/pages/home/home_page.dart';
import 'package:dev_quiz/src/pages/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/homePage', page: () => HomePage()),
      ],
    ),
  );
}
