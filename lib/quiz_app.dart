import 'package:flutter/material.dart';

import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/screens/quiz_srceen.dart';
import 'package:quiz_app/screens/splash_src.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? activeScreen;
  int counter = 0;
  @override
  void initState() {
    super.initState();
    activeScreen = SplashScreen(switchToQuizScr, switchToLoginScr);
  }

  switchToQuizScr() {
    setState(() {
      activeScreen = QuizScreen();
    });
  }

  switchToLoginScr() {
    setState(() {
      activeScreen = LoginScreen();
    });
  }

  // optionSelected() {
  //   setState(() {
  //     activeScreen = QuizScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /*Splash Page Theme Background Color Gradient.*/
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 68, 84, 220),
                  Color.fromARGB(255, 100, 132, 251)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
