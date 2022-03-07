import 'package:flutter/material.dart';
import 'package:todo_app/featues/presentation/widgets/add_tasks.dart';
import 'package:todo_app/featues/presentation/widgets/lists_task.dart';

import 'package:todo_app/model/todo_model.dart';

import 'widgets/userinput.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    searchcontroller.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TodoList"),
      ),
      body: Column(
        children: const [
          ListTasks(),
          AddTasks(),
        ],
      ),
    );
  }
}
