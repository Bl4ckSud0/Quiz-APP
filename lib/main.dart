import 'package:flutter/material.dart';
import 'package:quizapp/Quiz.dart';
import 'package:quizapp/final.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  _incrementCounter() {
    setState(() => _counter++);
    //print("I'm Back To Counter");
    //print(_counter);
  }

  _restartQuiz() {
    print("Hello From Main.dart");
    setState(() => _counter = 0);
  }

  List<Map<String, Object>> ques = [
    {
      'questionText': 'What\'s Your Favourite Color',
      'Answers': ['Black', 'Red', 'White', 'Blue']
    },
    {
      'questionText': 'What\'s Your Favourite Car',
      'Answers': ['BMW', 'Golf Gti', 'Mercedes', 'Pegut 508']
    },
    {
      'questionText': 'What\'s Your Favourite Singer',
      'Answers': ['Amr Diab', 'Wegzz', 'Tamer Hosny', 'Hamo Bika']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _counter < 3
            ? Quiz(ques, _counter, _incrementCounter)
            : Final(_restartQuiz));
  }
}
