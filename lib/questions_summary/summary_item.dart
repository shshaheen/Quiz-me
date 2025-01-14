import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_me/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['your_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          isCorrectAnswer: isCorrectAnswer, 
          questionIndex: itemData['question_index'] as int
          ),
        const SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question_text'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['your_answer'] as String,
                style: TextStyle(
                  color: Colors.purpleAccent
                ),),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(
                  color: Colors.blueAccent
                ),
              ),
            ],
          ))
      ],
    );
  }
}
