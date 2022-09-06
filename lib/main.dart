import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _questions = const [
      {
        'questionText':'What\'s your favourite color',
        'answers': [
          {'text': 'Black','score': 10},
          {'text': 'Red','score': 5},
          {'text': 'Green','score': 3},
          {'text': 'white','score': 1}],
      },
      {
        'questionText':'What\'s your favourite animal',
        'answers': [
          {'text': 'Rabit','score': 3},
          {'text': 'Snake','score': 1},
          {'text': 'Elephant','score': 5},
          {'text': 'Lion','score': 9}
          ],
      },
      {
        'questionText':'What\'s your favourite instructor',
        'answers': [
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1}
        ]
      },
    ];

  void _answerQuestion(int score){
    _totalscore = _totalscore+score;
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    if(_questionIndex < _questions.length)
    {
      print('We have more Questions!');
    }
    else{
      print('No more Questions!');
    }
  }

  @override
  Widget build(BuildContext context) {

    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy=[];
    // question = []; does not work if question is constant
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length 
      ? Quiz(questions: _questions,answerQuestion: _answerQuestion,questionIndex: _questionIndex,) 
      : Result(_totalscore),
    ),
    );
  }
}