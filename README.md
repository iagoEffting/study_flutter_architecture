# What is that?

Comparison of three flutter architectures.

- Blocs (https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1)
- Providers (https://pub.dev/packages/provider)
- MobX (https://medium.com/flutter-comunidade-br/flutter-com-mobx-c0f4762fbd1a)

# Where is the code

- Bloc are in `lib/blocs` and the screens `lib/screens/home_with_bloc.dart`
- Providers are in `lib/providers` and the screens `lib/screens/home_with_provider.dart`
- MobX are in `lib/mobx` and the screens `lib/screens/home_with_mobx.dart`

# Numbers

## Bloc

- **3 files**
- Logic busines file has **33 lines**

```dart
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

```

## Providers

- **1 file**
- Logic busines file has **26 lines**

```dart
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

```

## MobX

- **2 files**
- Logic busines file has **26 lines**
- Generate a code in each iteration

```dart
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }

  @action
  void reset() {
    value = 0;
  }
}

```

# Conclusion

I really like MobX :+1:
