import 'package:bloc/bloc.dart';
import 'package:flutter_explore/cubit_learn/cubit/todo_list_cubit/todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState());

  void addNote(String notes) {
    emit(state.copyWith(notes: [...state.notes, notes]));
  }

  void removeNote(int index) {
    final noteState = List<String>.from(state.notes);
    noteState.removeAt(index);
    emit(state.copyWith(notes: noteState));
  }
}
