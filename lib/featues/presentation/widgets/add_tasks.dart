import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/featues/presentation/bloc/todo_bloc.dart';
import 'package:todo_app/featues/presentation/bloc/todo_event.dart';
import 'package:todo_app/featues/presentation/todo_screen.dart';
import 'package:todo_app/model/todo_model.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    searchcontroller.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final counterblock = context.read<TodoBloc>();
    return Container(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchcontroller,
                    decoration: const InputDecoration(
                        hintText: "Add new Task", border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<TodoBloc>(context)
                    .add(ToAdd(searchcontroller.text));

                // setState(() {
                //   todolist.insert(
                //       0,
                //       Todo(
                //         title: searchcontroller.text,
                //       ));
                // });

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TodoScreen()));
              },
              child: Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    "Add",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
