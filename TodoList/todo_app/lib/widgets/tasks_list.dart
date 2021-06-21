import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_provider.dart';
import 'package:todo_app/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, provider, child) {
      return ListView.builder(
        itemBuilder: (contex, index) {
          final Task taskItem = provider.tasks[index];
          return TaskTitle(
            taskTitle: taskItem.name,
            isChecked: taskItem.isDone,
            checkboxCallback: (bool? checkboxState) {
              provider.toogleDone(taskItem);
            },
            longPressCallback: () {
              provider.deleteTask(taskItem);
            },
          );
        },
        itemCount: provider.taskCount,
      );
    });
  }
}
