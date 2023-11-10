import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.data.dart';
import 'dart:math';

import 'package:quiz_app/model/questions.model.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    var options = quizData[counter].options;
    var question = quizData[counter].question;

    options.shuffle();
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                "Quiz",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              question,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...options.map((e) => getOptions(e, onTap: () {
                  setState(() {
                    counter++;
                  });
                })),
          ],
        ),
      ),
    );
  }

  Widget getOptions(String option, {required void Function() onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 131, 156, 252),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(option),
    );
    // ElevatedButton(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(
    //       const Color.fromARGB(255, 136, 160, 253),
    //     ),
    //   ),
    //   onPressed: onTap,
    //   child: Text(option ?? 'NO Option'),
    // );
  }
}
