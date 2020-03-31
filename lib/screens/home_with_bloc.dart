import 'package:architectures/blocs/bloc_provider.dart';
import 'package:architectures/blocs/couter_bloc.dart';
import 'package:flutter/material.dart';

class MyHomeBlocPage extends StatelessWidget {
  MyHomeBlocPage({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<Counter>(context);

    return StreamBuilder<int>(
      stream: BlocProvider.of<Counter>(context).counterStream,
      builder: (context, snapshot) {
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
                  snapshot.data.toString(),
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  counterBloc.increment();
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {
                  counterBloc.decrement();
                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {
                  counterBloc.reset();
                },
                tooltip: 'Decrement',
                child: Icon(Icons.repeat),
              ),
            ],
          ),
        );
      },
    );
  }
}
