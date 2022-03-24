import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Верстка теория')),
      body: Container(
        //устанавливает фон серым цветом
        color: Colors.grey,
        child: Row(
          //Устанавливает дочернии объекты по центру
          mainAxisAlignment: MainAxisAlignment.center,
          //максимально увеличивает границы объекта по ширине
          mainAxisSize: MainAxisSize.max,
          //уст. границы самого большого объекта в определенном направлении
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            ColorBox(),
            BigColorBox(),
            ColorBox()
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BigColorBox extends StatelessWidget {
  const BigColorBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.redAccent[400],
          border: Border.all()
      ),
    );
  }
}

class MyContainerMain extends StatelessWidget{
  const MyContainerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyContainerTwo();
  }
}

class MyContainerTwo extends StatelessWidget{
  const MyContainerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Верстка теория')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              // alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.amber[300],
              child: const Text('Text for testing my app', textAlign: TextAlign.center),
            ),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.network(
                      'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png'
                  ).image,
                  //указываем как будет размещена картинка в объекте
                  fit: BoxFit.cover
                ),
                border: Border.all(),
                borderRadius: BorderRadius.circular(30)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainerOne extends StatelessWidget{
  const MyContainerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Верстка теория')),
      body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.amber[600],
                // изменяет форму контейнера
                //shape: BoxShape.circle,
                border: Border.all()
            ),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(0.0),
            child: const Text('Это текст который используется для тестирования приложения'),
          )
      ),
    );
  }
}


class MyFlexible extends StatelessWidget {
  const MyFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Верстка теория')),
      body: Container(
        //устанавливает фон серым цветом
        color: Colors.grey,
        child: Row(
          //Устанавливает дочернии объекты по центру
          mainAxisAlignment: MainAxisAlignment.center,
          //максимально увеличивает границы объекта по ширине
          mainAxisSize: MainAxisSize.max,
          //уст. границы самого большого объекта в определенном направлении
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Flexible(child: ColorBox()),
            BigColorBox(),
            Flexible(child: ColorBox()),
          ],
        ),
      ),
    );
  }
}
