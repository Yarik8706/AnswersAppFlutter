import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final index;
  final questionData;
  final onChangeAnswer;

  Quiz({Key? key, this.index, this.questionData, this.onChangeAnswer})
      : super(key: key);

  Widget buildTitle() {

    return Container(
      padding: const EdgeInsets.all(30),
      child: Text(
        questionData.questions[index].title,
        style: const TextStyle(
          fontFamily: 'Regular',
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...questionData.questions[index].answers.map(
                (e) =>
                Answer(
                  title: e['answer'],
                  isCorrect: e.containsKey('correct'),
                  onChangeAnswer: onChangeAnswer,
                )
        ).toList()
      ],
    );
  }
}
