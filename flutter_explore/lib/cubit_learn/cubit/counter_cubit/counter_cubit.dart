import 'package:bloc/bloc.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    emit(state.copyWith(counterValue: state.counterValue + 1));
  }

  void decrement() {
    emit(state.copyWith(counterValue: state.counterValue - 1));
  }

  void resetValue() {
    emit(state.copyWith(counterValue: 0));
  }
}
