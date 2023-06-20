// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.greenAccent,
      child: Text(
        questionText!,
        style: const TextStyle(
          fontFamily: 'SpaceGrotesk',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
