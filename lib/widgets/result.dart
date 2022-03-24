import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int count;
  final int total;
  final void Function() onClearState;

  const Result(
      {Key? key, required this.count, required this.total, required this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';
    Widget icon;
    if (count == 0) {
      message = 'Вы не ответили ни на один вопрос :(';
      icon = Icon(Icons.favorite_border, color: Colors.redAccent);
    } else if (count == total) {
      message = 'Вы ответили правильно на все вопросы!';
      icon = Icon(Icons.star, color: Colors.yellowAccent);
    } else {
      icon = Icon(Icons.favorite, color: Colors.redAccent);
      message = 'Вы ответили верно на $count из $total вопросов.';
    }

    var baseTextStyle = Theme
        .of(context)
        .textTheme
        .caption;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.amber,
              Colors.red
            ]
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: icon,
            ),
          ),
          Text(
              message,
              textAlign: TextAlign.center,
              style: baseTextStyle
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              'Вы прошли тест!',
              style: TextStyle(
                  fontFamily: baseTextStyle!.fontFamily,
                  color: baseTextStyle.color,
                  fontWeight: baseTextStyle.fontWeight,
                  fontSize: 20
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Пройти тест еще раз'),
            onPressed: onClearState,
          )
        ],
      ),
    );
  }
}
