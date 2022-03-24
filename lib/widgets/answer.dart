import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  const Answer(
      {Key? key, required this.title, this.isCorrect, required this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () => onChangeAnswer(isCorrect),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 15
              ),
            )
        )
    );
  }
}
