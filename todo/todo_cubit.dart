import 'package:cubitbloc/todo/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addNote(String title) {
    emit([...state, Todo(title: title)]);
  }

  void deleteNote(int index) {
    List<Todo> todos = [...state];
    todos.removeAt(index);
    emit(todos);
  }

  void toggle(int index, bool value) {
    final updated = [...state];
    updated[index].done = value;
    emit(updated);
  }
}
