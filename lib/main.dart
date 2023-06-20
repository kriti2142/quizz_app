import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  static const List<Map<String, dynamic>> _questions = [
    {
      "question":
          "Who among the following ruler was defeated by Seleucus?",
      "answers": ["Chandra Gupta Maurya", "Vikramaditya", "Chanakya", "None of the above"],
      "correctAns": "Chandra Gupta Maurya",
    },
    {
      "question":
          "When was Indian National song sung for the first time?",
      "answers": ["December 27, 1911 Calcutta", "1919 - Jallianwala Bagh Massacre", "1857 revolt", "1896 session of the Indian National Congress"],
      "correctAns": "1896 session of the Indian National Congress",
    },
    {
      "question": "In the third battle of Panipat, who defeated Marathas?",
      "answers": ["Mughals", "Afghans", "British Army", "None of the Above"],
      "correctAns": "Afghans",
    },
    {
      "question":
          "The Mughal Empire reached its peak under the rule of which empero?",
      "answers": [" Babur", "Shah Jahan ", "Akbar ", "Aurangzeb"],
      "correctAns": "Akbar ",
    },
    {
      "question":
          "The Indian Rebellion of 1857, also known as the Sepoy Mutiny, was against the rule of which colonial power",
      "answers": ["Portuguese", "British ", "Dutch", "French"],
      "correctAns": "British ",
    },
  ];

  void _answerQuestion(int res) {
    setState(() {
      totalScore += res;
      _questionIndex = (_questionIndex + 1);
    });
  }

  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("UE208052 \nQUIZZ APP"),
        ),
        floatingActionButton: FloatingActionButton(
          child:  Text(
            "Reset Quiz",
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            _resetQuiz();
          },
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: _questionIndex >= _questions.length
              ? Result(totalScore)
              : Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
