import 'package:flutter_bloc/flutter_bloc.dart';

import 'ExampleEvents.dart';

class ExampleBloc extends Bloc<ExampleEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(ExampleEvent event) async* {
    switch (event) {
      case ExampleEvent.chooseDog:
        yield 0;
        break;
      case ExampleEvent.chooseCat:
        yield 1;
        break;
    }
  }
}