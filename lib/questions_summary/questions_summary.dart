import 'package:flutter/material.dart';
import 'package:quiz_me/data/questions.dart';
import 'package:quiz_me/questions_summary/questions_identifier.dart';
import 'package:quiz_me/questions_summary/summary_item.dart';

bool isCorrect(String x, String y) {
  return x == y;
}

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(itemData: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
