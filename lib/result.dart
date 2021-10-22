import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // FlatButton(
          //   onPressed: resetHandler,
          //   child: Text('Restart Quiz!'),
          //   textColor: Colors.blue,
          // )
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.amber),
          ),
          // OutlineButton(
          //     borderSide: BorderSide(color: Colors.amber),
          //     textColor: Colors.lightGreenAccent,
          //     child: Text('An OutlineButton'),
          //     onPressed: () {
          //       print('Hello world');
          //     })
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.amber,
                  side: BorderSide(color: Colors.lightGreenAccent)),
              child: Text('An OutlineButton'),
              onPressed: () {
                print('Hello world');
              })
        ],
      ),
    );
  }
}
