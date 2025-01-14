import 'package:flutter/material.dart';
import 'package:quiz_me/start_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.startQuiz,
  });
  final List<String> chosenAnswers;
  final Function startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered X out of Y questions correctly"),
            SizedBox(
              height: 30,
            ),
            Text("List of answers and questions...."),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  startQuiz();
                },
                child: Text("Restart Quiz!")),
          ],
        ),
      ),
    );
  }
}
