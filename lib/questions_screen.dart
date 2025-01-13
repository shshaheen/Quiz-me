import 'package:flutter/material.dart';
import 'package:quiz_me/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => QuestionsScreenState();
}

class QuestionsScreenState extends State<QuestionsScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "The Question..",
            style: TextStyle(
              color: Colors.white,
            ),),
          SizedBox(height: 30,),
          AnswerButton("1"),
            SizedBox(height: 10,),
            AnswerButton("2"),
            SizedBox(height: 10,),
            AnswerButton("3"),
            SizedBox(height: 10,),
            AnswerButton("4"),
        ],
      ),
    );
  }
}
