
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
 
  final _questions = const [
     {
     'questionText': 'Which crop is sown on the largest area in India?',
     'answers': [ 
       {'text': 'Rice','score': 10},
       {'text': 'Wheat','score': 0},
       {'text': 'Sugarcane','score': 0},
       {'text': 'Maize','score': 0},
     ],
   },
   {
     'questionText': 'What is the second largest country (in size) in the world?',
     'answers': [ 
       {'text': 'China','score': 0},
       {'text': 'USA','score': 0},
       {'text': 'Canada','score': 10},
       {'text': 'Russia','score': 0},
     ],
   },
   {
     'questionText': 'Which one of the following was the first fort constructed by the British in India?',
     'answers': [ 
       {'text': 'Fort St.George','score': 10},
       {'text': 'Fort St.david','score': 0},
       {'text': 'Fort St.Angelo','score': 0},
       {'text': 'Fort William','score': 0},
     ],
   },
   {
     'questionText': 'The world smallest country is?',
     'answers': [ 
       {'text': 'Canada','score': 0},
       {'text': 'Russia','score': 0},
       {'text': 'Maldives','score': 0},
       {'text': 'Vatican City','score': 10},
     ],
   },
 ];

 var _questionIndex = 0;
 var _totalScore = 0;

void _resetQuiz(){
  setState(() {
    _questionIndex = 0;
    _totalScore = 0;
  });
}

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more question');
    } else {
      print('No more Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    //we shuld use const if we donot want to create a list againod question
    //if you want to create thta have to make const to var
    //and the const [] will not let add item to the list

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: _questions,)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
