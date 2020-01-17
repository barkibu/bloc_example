

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ExampleBloc.dart';
import 'ExamplePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<ExampleBloc>(
        create: (context) => ExampleBloc(),
        child: ExamplePage(),
      ),
    );
  }
}