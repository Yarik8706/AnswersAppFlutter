import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_answersapp/pages/home_page.dart';

void main() {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizApp',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            textTheme: const TextTheme(
                caption: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Regular',
                    fontWeight: FontWeight.bold,
                  color: Colors.purple
                )
            )
        ),
        home: const HomePage()
    );
  }
}


