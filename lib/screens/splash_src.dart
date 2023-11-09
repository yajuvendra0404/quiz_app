import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  const SplashScreen(this._switchToQuizScr, this._switchToLoginScr,
      {super.key});

  final void Function() _switchToQuizScr;
  final void Function() _switchToLoginScr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          /*Splash Page Image.*/
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Opacity( // adding opacity widget is not recommended
              //   opacity: 0.8,
              Image.asset(
                'assets/icons/quiz.png',
                width: 250,
                // color: Color.fromARGB(17, 255, 255, 255),
              ),
              // ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lets learn with fun.",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 136, 160, 253),
                      ),
                    ),
                    onPressed: _switchToQuizScr,
                    icon: const Icon(Icons.arrow_circle_right_outlined),
                    label: const Text(
                      "Start Quiz",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 136, 160, 253),
                      ),
                    ),
                    onPressed: _switchToLoginScr,
                    icon: const Icon(Icons.arrow_circle_right_outlined),
                    label: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
