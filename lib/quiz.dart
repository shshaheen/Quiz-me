import 'package:flutter/material.dart';
import 'package:quiz_me/data/questions.dart';
import 'package:quiz_me/questions_screen.dart';
import 'package:quiz_me/results_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  // @override
  // void initState() {
  //   activeScreen = 'start-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // ResultsScreen();
        
        activeScreen = 'results-screen';
        // selectedAnswers = [];
      });
    }
  }

  void restartScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? screen;
    if (activeScreen == 'start-screen') {
      screen = StartScreen(switchScreen);
    } else if (activeScreen == 'quiz-screen') {
      screen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else {
      screen = ResultsScreen(
          chosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,

        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              const Color.fromARGB(255, 171, 83, 254)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screen,
        ),
      ),
    );
  }
}
