import 'package:todo_app/model/todo_model.dart';

abstract class TodoState {}

class InitialState extends TodoState {}

class ErroState extends TodoState {
  final String error;
  ErroState(this.error);
}

class AddToList extends TodoState {
  final String titletask = "";
  // List<Todo> todolist = [Todo(title:  titletask.toString())];
}
