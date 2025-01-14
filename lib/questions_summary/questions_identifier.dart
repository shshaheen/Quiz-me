import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });
  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:30,
      height:30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer?
        Colors.blueAccent:
        Colors.purpleAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionIndex.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
