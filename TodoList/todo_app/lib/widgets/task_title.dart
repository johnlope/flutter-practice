import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?)? checkboxCallback;
  final GestureLongPressCallback? longPressCallback;

  TaskTitle(
      {required this.taskTitle,
      this.isChecked = false,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
