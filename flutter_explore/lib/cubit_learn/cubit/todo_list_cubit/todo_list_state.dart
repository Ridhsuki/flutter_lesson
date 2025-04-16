import 'package:equatable/equatable.dart';

class TodoListState extends Equatable {
  const TodoListState({this.notes = const ['Mengerjakan PR', 'Membuat Konten', 'Muroja\'ah Al-Qur\'an']});

  final List<String> notes;

  @override
  List<Object> get props => [notes];

  TodoListState copyWith({
    List<String>? notes,
  }) {
    return TodoListState(
      notes: notes ?? this.notes,
    );
  }
}
