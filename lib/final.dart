import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  final Function restart;
  Final(this.restart);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Column(
        children: [
          Text(
            "Great You Answered All :D",
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: restart,
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
