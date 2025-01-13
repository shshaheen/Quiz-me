import 'package:flutter/material.dart';

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
          Text("The Question.."),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){},
            child: Text('Answer 1'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
            onPressed: (){},
            child: Text('Answer 2'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
            onPressed: (){},
            child: Text('Answer 3'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
            onPressed: (){},
            child: Text('Answer 4'),
            )
        ],
      ),
    );
  }
}
