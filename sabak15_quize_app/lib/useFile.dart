import 'package:sabak15_quize_app/model.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> suroojoop = [
    QuizeModel(suroo: 'Кыргызыстанда 7 облость барбы ?', joop: true),
    QuizeModel(suroo: 'Сулайман Тоо Жалал-Абад облусундабы ?', joop: false),
    QuizeModel(suroo: 'Маймыл бакка чыгабы ?', joop: true),
    QuizeModel(
        suroo: 'Google корпорациясы кеңсеси Кыргызыстанда жайгашканбы ?',
        joop: false),
    QuizeModel(suroo: 'Балык сууда жашайбы ?', joop: true),
    QuizeModel(suroo: 'Крокадил учабы ?', joop: false),
    QuizeModel(suroo: 'Чымчык бакка конобу ?', joop: true),
    QuizeModel(suroo: 'Ташбака учабы ?', joop: false),
    QuizeModel(suroo: 'Кыргызыстандын борбору Бишкек шаарыбы ?', joop: true),
  ];
  String surooAluu() {
    return suroojoop[index].suroo;
  }

  bool joopAluu() {
    return suroojoop[index].joop;
  }

  void nextQuestion() {
    if (index <= suroojoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (suroojoop[index] == suroojoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
