import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore,this.resetHandler); 
 
String get resultphrase{
    var resultText;
    if(resultScore == 0){
      resultText = 'All Answers are Incorrect Score is 0 ';
    }
    else if(resultScore == 10){
      resultText = 'One Answer are Correct Score is 10 ';
    }
    else if(resultScore == 20){
      resultText = 'Two Answers are Correct Score is 20 ';
    }
    else if(resultScore == 30){
      resultText = 'Three Answers are Correct Score is 30 ';
    }
    else if(resultScore == 40){
      resultText = 'Volia !! \n All Answers are Correct Score is 40 ';
    }
return resultText;
 }


  @override
  Widget build(BuildContext context) {
    return Center(
                child: 
                Column(children: <Widget>[Text(
                  resultphrase,
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: resetHandler, child: Text('Restart Test'))
                //FlatButton(onPressed: resetHandler, child: Text('Restart Test'))
                ],
                ),
                
              );
  }
}