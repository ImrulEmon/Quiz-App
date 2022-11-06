import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.black26,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
