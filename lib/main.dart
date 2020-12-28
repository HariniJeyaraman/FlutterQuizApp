import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [{'text':'Black', 'score' : 10}, {'text' : 'Red' , 'score' : 5}, {'text' : 'Green', 'score' : 3}, {'text': 'Blue', 'score' : 2}],
    },
    {
      'questionText': 'What\'s your favorite series ?',
      'answers': [{'text': 'FRIENDS', 'score' : 10}, {'text': 'GOT', 'score' : 5}, {'text': 'The Office', 'score' : 5}, {'text': 'HIMYM', 'score' : 5}],
    },
    {
      'questionText': 'What\'s your favorite character ?',
      'answers': [{'text': 'Chandler' , 'score' : 10}, {'text': 'Rachel' , 'score' : 10}, {'text': 'Janice' , 'score' : 10}, {'text': 'Joey' , 'score' : 10}],
    },
    {
      'questionText': 'What\'s your favorite youtuber ?',
      'answers': [{'text': 'Cody Ko' , 'score' : 10}, {'text': 'TwoSet', 'score' : 10}, {'text': 'Drew Gooden' , 'score' : 10}, {'text': 'Cateen' , 'score' : 10}],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });

}
  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = [];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion : _answerQuestions, questionIndex : _questionIndex, questions : _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
