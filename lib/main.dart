import 'package:flutter/material.dart';
import 'package:udemy1/quiz.dart';
import 'package:udemy1/result.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '1. What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 2},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 6}
      ]
    },
    {
      'questionText': '2. What\'s your favourite animal?',
      'answers': [
        {'text': 'Bager', 'score': 7},
        {'text': 'Cat', 'score': 0},
        {'text': 'Dog', 'score': 1},
        {'text': 'Rabbit', 'score': 4}
      ]
    },
    {
      'questionText': '3. What\'s your favourite fruit?',
      'answers': [
        {'text': 'Cherry', 'score': 2},
        {'text': 'Strawberry', 'score': 7},
        {'text': 'Orange', 'score': 5},
        {'text': 'Lichi', 'score': 3}
      ]
    },
    {
      'questionText': '4. What\'s your favourite flower?',
      'answers': [
        {'text': 'Sunflower', 'score': 7},
        {'text': 'Sakura', 'score': 9},
        {'text': 'Rose', 'score': 0},
        {'text': 'Lilly', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      //if (_questionIndex >= 3) _questionIndex = -1;

      _totalScore += score;

      print('Answering the question... $_questionIndex');
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        fontFamily: 'Ubuntu',
      ),
      color: Colors.black,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'Quiz App',
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
