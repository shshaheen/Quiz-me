import 'package:flutter/material.dart';
import 'package:quiz_me/questions_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen='start-screen';
  // @override
  // void initState() {
  //   activeScreen = 'start-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
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
          child: activeScreen=='start-screen'? StartScreen(switchScreen): QuestionsScreen(),
        ),
      ),
    );
  }
}