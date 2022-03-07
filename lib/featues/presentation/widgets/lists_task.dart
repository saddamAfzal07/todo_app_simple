import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/featues/presentation/bloc/todo_bloc.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/bloc/todo_state.dart';
import 'package:todo_app/model/todo_model.dart';

class ListTasks extends StatefulWidget {
  const ListTasks({Key? key}) : super(key: key);

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  @override
  Widget build(BuildContext context) {
    final counterblock = context.read<TodoBloc>();
    return Expanded(
        child: Container(
      child: ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
              title: BlocBuilder<TodoBloc, TodoState>(
                builder: (context, state) {
                  return Text(state.toString(),
                      style: const TextStyle(fontSize: 40));
                },
              ),
              leading: Text(todolist[index].title),
              // subtitle: Text(todolist[index].creationDate),
              trailing: IconButton(
                onPressed: () {
                  // BlocProvider.of<TodoBloc>(context)
                  // .add(TodoRemove(todolist[index]));
                  setState(() {
                    todolist.remove(todolist[index]);
                  });
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ));
        }),
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: todolist.length,
      ),
    ));
  }
}
