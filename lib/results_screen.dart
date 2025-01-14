import 'package:flutter/material.dart';
import 'package:quiz_me/questions_summary/questions_summary.dart';
import 'package:quiz_me/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.startQuiz,
  });
  final List<String> chosenAnswers;
  final Function startQuiz;
  // final Function startQuiz;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryData = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        "question_index": i + 1,
        "question_text": questions[i].text,
        "your_answer": chosenAnswers[i],
        "correct_answer": questions[i].answers[0]
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final SummaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = SummaryData.where((data) {
      return data['your_answer'] == data['correct_answer'];
    }).length;

    //  print(getSummaryData());
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: TextStyle(
                  color: const Color.fromARGB(255, 229, 178, 238),
                  fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            QuestionsSummary(
              summaryData: SummaryData,
            ),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: () {
                  startQuiz();
                },
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: Text(
                  "Restart Quiz!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
