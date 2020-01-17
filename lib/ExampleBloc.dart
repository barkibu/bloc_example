import 'package:flutter_bloc/flutter_bloc.dart';

import 'ExampleEvents.dart';

class ExampleBloc extends Bloc<ExampleEvent, String> {
  @override
  String get initialState => "WOOF!";

  @override
  Stream<String> mapEventToState(ExampleEvent event) async* {
    switch (event) {
      case ExampleEvent.chooseDog:
        yield "WOOF!";
        break;
      case ExampleEvent.chooseCat:
        yield "MEOW!";
        break;
    }
  }
}