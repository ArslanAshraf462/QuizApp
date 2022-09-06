import 'package:flutter/material.dart';
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

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color',
      'What\'s your favourite animal',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion, 
          child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 2 chosen!'), 
            child: Text('Answer 2'),
            ),
          ElevatedButton(
            onPressed: () {
              //....
              print('Answer 3 chosen!');
            }, 
            child: Text('Answer 3'),
            ),
        ],
      ),
    ),
    );
  }
}