import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  get getCounter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() {
    counter = getCounter + 1;
  }

  void decrement() {
    counter = getCounter - 1;
  }

  void reset() {
    counter = 0;
  }
}
