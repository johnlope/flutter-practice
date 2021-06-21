import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_provider.dart';
import 'package:todo_app/screens/tasks_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TaskProvider(),
    child: TodoApp(),
  ));
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
