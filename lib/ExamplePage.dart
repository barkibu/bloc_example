import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ExampleBloc.dart';
import 'ExampleEvents.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ExampleBloc counterBloc = BlocProvider.of<ExampleBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('BLoC Example App')),
      body: BlocBuilder<ExampleBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:40.0, bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  child: SvgPicture.network(
                    'https://image.flaticon.com/icons/svg/1820/1820785.svg',
                    placeholderBuilder: (context) => CircularProgressIndicator(),
                    height: 128.0,
                  ),
                  onPressed: () {
                    counterBloc.add(ExampleEvent.chooseDog);
                  },
                ),
                FloatingActionButton(
                  child: SvgPicture.network(
                    'https://image.flaticon.com/icons/svg/616/616430.svg',
                    placeholderBuilder: (context) => CircularProgressIndicator(),
                    height: 128.0,
                  ),
                  onPressed: () {
                    counterBloc.add(ExampleEvent.chooseCat);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
