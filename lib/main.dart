import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
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

  final questions = const [
      {
        'questionText':'What\'s your favourite color',
        'answers': ['Black','Red','Green','White']
      },
      {
        'questionText':'What\'s your favourite animal',
        'answers': ['Rabbit','Snake','Elephant','Lion']
      },
      {
        'questionText':'What\'s your favourite instructor',
        'answers': ['Max','Max','Max','Max']
      },
    ];

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    if(_questionIndex < questions.length)
    {
      print('We have more Questions!');
    }
    print(_questionIndex);
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
      body: _questionIndex < questions.length ? Column(
        children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
          .map((answer) { 
            return Answer(_answerQuestion,answer);
          }).toList(),
        ],
      ) : Center(child: Text('You did it!'),),
    ),
    );
  }
}