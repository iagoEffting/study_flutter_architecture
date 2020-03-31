import 'package:architectures/providers/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeProviderPage extends StatelessWidget {
  MyHomeProviderPage({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final Counter counter = Provider.of<Counter>(context);

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
              Text(
                counter.getCounter.toString(),
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActions(
          counter: counter,
        ));
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
