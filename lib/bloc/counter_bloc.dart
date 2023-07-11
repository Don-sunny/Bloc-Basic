import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increament>((event, emit) {
      final currentStateValue = state.count;
      final increamentedValue = currentStateValue + 1;
      return emit(
        CounterState(count: increamentedValue),
      );
    });

    on<Decreament>(
      (event, emit) {},
    );
  }
}
