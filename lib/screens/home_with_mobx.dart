import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:architectures/mobx/counter.dart';

class MyHomeMobXPage extends StatelessWidget {
  MyHomeMobXPage({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final Counter counter = Counter();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActions(
        counter: counter,
      ),
    );
  }
}

class FloatingActions extends StatelessWidget {
  FloatingActions({this.counter});

  final Counter counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: counter.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: counter.decrement,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: counter.reset,
          tooltip: 'Decrement',
          child: Icon(Icons.repeat),
        )
      ],
    );
  }
}
