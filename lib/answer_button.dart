import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,
  required this.answerText,
  required this.onTap,});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ElevatedButton(
        
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
      
          
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10),
            backgroundColor: const Color.fromARGB(255, 46, 3, 72),
            foregroundColor: Colors.white,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,),
        
      ),
    );
  }
}
