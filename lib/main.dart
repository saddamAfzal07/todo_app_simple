import 'package:flutter/material.dart';
import 'package:todo_app/featues/presentation/bloc/todo_bloc.dart';
import 'package:todo_app/featues/presentation/todo_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'featues/presentation/bloc_counter/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoScreen(),
      ),
    );
  }
}
