import 'package:flutter/material.dart';
import 'package:quiz_me/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.deepPurple,
                const Color.fromARGB(255, 171, 83, 254)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                 )
          ),
          child: const StartScreen()),
          // Column(
          //   children: [
          //     FittedBox(
          //       child: Image.asset('assets/images/quiz-logo.png'),
          //       fit: BoxFit.cover,
          //     ),
          //     SizedBox(height: 40,),
          //     const Text("Learn Flutter the fun way!",style: TextStyle(color: Colors.white),),
          //     SizedBox(height: 10,),
          //     OutlinedButton(onPressed: (){}, child: const Text("Start Quiz",
          //     style: TextStyle(color: Colors.white),)),
          //   ],
          // ),
          
        )
      
    );
  }
}
