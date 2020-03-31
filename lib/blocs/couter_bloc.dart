import 'dart:async';

import 'package:architectures/blocs/bloc.dart';

class Counter extends Bloc {
  Counter() {
    _counterController.sink.add(_counter);
  }

  int _counter = 0;
  int get getCounter => _counter;

  final _counterController = StreamController<int>();
  Stream<int> get counterStream => _counterController.stream;

  void increment() {
    _counterController.sink.add(++_counter);
  }

  void decrement() {
    _counterController.sink.add(--_counter);
  }

  void reset() {
    _counterController.sink.add(0);
  }

  @override
  void dispose() {
    _counterController.close();
  }
}
