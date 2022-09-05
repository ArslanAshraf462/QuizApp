import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestion(){
    print('Answer Chosen!');
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\' your favourite color',
      'What\' your favourite animal'
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text('The question!'),
          ElevatedButton(
            onPressed: answerQuestion, 
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