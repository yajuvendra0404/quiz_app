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
  @override
  void initState() {
    super.initState();
    activeScreen = SplashScreen(switchToQuizScr, switchToLoginScr);
  }

  switchToQuizScr() {
    setState(() {
      activeScreen = const QuizScreen();
    });
  }

  switchToLoginScr() {
    setState(() {
      activeScreen = LoginScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: activeScreen,
    );
  }
}
