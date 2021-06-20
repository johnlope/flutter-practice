import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  Function(bool?)? checkboxCallback;

  TaskTitle(
      {required this.taskTitle, this.isChecked = false, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
