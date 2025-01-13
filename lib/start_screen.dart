import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final Function startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(
            height: 40,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
