import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context){
    return Center(
      child : Column(
      children: <Widget>[
          Text("You have finished! Result : $resultScore",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign : TextAlign.center,
         ),
        FlatButton(child: Text('Restart Quiz'), onPressed : resetHandler,)
    ],
    ),
    );

  }
}