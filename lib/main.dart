import 'package:architectures/screens/home_with_mobx.dart';
import 'package:flutter/material.dart';

// provider dependencies
import 'package:provider/provider.dart';

import 'package:architectures/providers/counter.dart';
import 'package:architectures/screens/home_with_provider.dart';

// Bloc dependencies
import 'package:architectures/blocs/bloc_provider.dart';
import 'package:architectures/blocs/couter_bloc.dart';
import 'package:architectures/screens/home_with_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Using mobX
      // home: MyHomeMobXPage(
      //   title: 'Flutter Demo Home Page',
      // ),

      // Using Provider
      // home: ChangeNotifierProvider<Counter>.value(
      //   notifier: Counter(),
      //   child: MyHomeProviderPage(
      //     title: 'Flutter Demo Home Page',
      //   ),
      // ),

      // Using Bloc
      // home: BlocProvider<CounterBloc>(
      //   bloc: CounterBloc(),
      //   child: MyHomeBlocPage(
      //     title: 'Flutter Demo Home Page',
      //   ),
      // ),
    );
  }
}
