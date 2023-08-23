import 'package:flutter/material.dart';
//Constructor

class TaskTile extends StatelessWidget {
  //Properties
  late bool isChecked = false;
  late String taskTitle;
  final Function(bool?) checkboxCallback;
  //TODO Section 208 video 5:05 refactor - add a callback
  final void Function()? longPressCallback;

  //Constructor
  //TODO Section 208 video 5:05 refactor constructor
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //TODO Section 208 video 5:05 refactor by adding onLongPress:
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  } //Widget
} //class
