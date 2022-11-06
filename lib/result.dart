import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);

  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 9) {
      resultText = 'Low Score';
    } else if (resultScore > 9 && resultScore <= 19) {
      resultText = 'Medium Score';
    } else {
      resultText = 'High Score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You did it !"),
          SizedBox(
            height: 30.0,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Score :',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                '$resultScore',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
              onPressed: reset,
              icon: Icon(Icons.loop_rounded),
              label: Text('Restart'))
        ],
      ),
    );
  }
}
