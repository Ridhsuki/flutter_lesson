import 'package:bloc/bloc.dart';
import 'package:flutter_explore/cubit%20learn/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    emit(state.copyWith(
      counterValue: state.counterValue + 1
    ));
  }
}
