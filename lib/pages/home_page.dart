import 'package:flutter/material.dart';
import 'package:flutter_answersapp/models/question.dart';
import 'package:flutter_answersapp/widgets/progress_bar.dart';
import 'package:flutter_answersapp/widgets/quiz.dart';
import 'package:flutter_answersapp/widgets/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final QuestionData data = QuestionData();

  int _countResult = 0;
  int _questionIndex = 0;
  List<Icon> _icons = [];

  void _clearState() =>
      setState(() =>
      {
        _countResult = 0,
        _questionIndex = 0,
        _icons = []
      });

  void _onChangeAnswer(bool isCorrect) =>
      setState(() {
        if (isCorrect) {
          _countResult++;
          _icons.add(
              const Icon(Icons.brightness_1, color: Colors.lightGreenAccent));
        } else {
          _icons.add(
              const Icon(Icons.brightness_1_outlined, color: Colors.red));
        }

        _questionIndex++;
      });

  @override
  Widget build(BuildContext context) {
    var quiz = Quiz(index: _questionIndex, onChangeAnswer: _onChangeAnswer, questionData: data);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Вопросы по георафии'),
        ),
        body: Column(
          children: [
            ProgressBar(icons: _icons,
                count: _questionIndex,
                total: data.questions.length),
            _questionIndex < data.questions.length ? quiz.buildTitle() : Container(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.deepPurple,
                      width: 5.0,
                      style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              child: _questionIndex < data.questions.length ?
              quiz :
              Result(count: _countResult, total: data.questions.length, onClearState: _clearState)
            ),
          ],
        )
    );
  }
}
