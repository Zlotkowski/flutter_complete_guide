import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler; -> some wrr error
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
          // RaisedButton(
          //   //ElevatedButton
          //   color: Colors.blue,
          //   textColor: Colors.white,
          //   child: Text(answerText),
          //   onPressed: selectHandler,
          // ),
          ElevatedButton(
              child: Text(answerText),
              onPressed: selectHandler,
              // style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(Colors.amber),
              //     foregroundColor:
              //         MaterialStateProperty.all(Colors.lightGreenAccent)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber, onPrimary: Colors.lightGreenAccent)),
    );
  }
}
