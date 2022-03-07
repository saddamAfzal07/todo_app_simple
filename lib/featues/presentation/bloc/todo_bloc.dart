import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_state.dart';

import '../../../model/todo_model.dart';
import 'todo_event.dart';
import 'todo_event.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(InitialState()) {
    on<ToAdd>(_onAdd);
    on<ToRemove>((event, emit) {
      // if (event.remove == "") {
      //   emit(ErroState("Enter Task"));
      // } else {
      //   todolist.remove(event.remove);
      // }
    });
  }

  _onAdd(
    ToAdd event,
    Emitter emit,
  ) async {
    // List<Todo> todolist = [];
    // todolist.add(event.

    // emit(AddToList());
  }
}
