class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
      title: 'Столица Австралии: ',
      answers: [
        {'answer' : 'Канберра', 'correct': 1},
        {'answer' : 'Москва'},
        {'answer' : 'Лондон'},
        {'answer' : 'Сан-Франциско'}
      ]),
    Question(
        title: 'Самый маленький океан это - ',
        answers: [
          {'answer' : 'Северно-Ледовитый', 'correct': 1},
          {'answer' : 'Атлантический'},
          {'answer' : 'Индийский'},
          {'answer' : 'Тихий'}
        ]),
    Question(
        title: 'Что соединяет Суэцкий канал?',
        answers: [
          {'answer' : 'Тихий океан и Средиземное море'},
          {'answer' : 'Средиземное и Красное море', 'correct': 1},
          {'answer' : 'Красное море и Индийский океан'},
          {'answer' : 'Красное море и Северо-Ледовитый океан'}
        ]),
    Question(
        title: 'Исток реки Нил находится в: ',
        answers: [
          {'answer' : 'Египте'},
          {'answer' : 'Судане'},
          {'answer' : 'Чаде'},
          {'answer' : 'Эфиопии и Уганды', 'correct': 1}
        ]),
    Question(
        title: 'Самая длинная река в Америки это -',
        answers: [
          {'answer' : 'Нил'},
          {'answer' : 'Мисисипи'},
          {'answer' : 'Амазонка', 'correct': 1},
          {'answer' : 'Волга'}
        ]),
    Question(
        title: 'Старейшее и самое глубокое пресноводное озеро в мире?',
        answers: [
          {'answer' : 'Байкал', 'correct': 1},
          {'answer' : 'Белое'},
          {'answer' : 'Воже'},
          {'answer' : 'Онежское'}
          ]),
  ];

  List<Question> get questions => [..._data];
}