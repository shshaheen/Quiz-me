import 'package:flutter/material.dart';
import 'package:quiz_me/start_screen.dart';
import 'package:quiz_me/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.startQuiz,
  });
  final List<String> chosenAnswers;
  final Function startQuiz;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryData = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        "question_index": i + 1,
        "question" : questions[i].text,
        "your_answer": chosenAnswers[i],
        "correctAnswer": questions[i].answers[0]
      });
    }
    return summaryData;
  }


  @override
  Widget build(BuildContext context) {
    //  print(getSummaryData());
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
