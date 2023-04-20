import 'package:flutter/material.dart';
//Constructor

class TaskTile extends StatelessWidget {
  //Properties
  late bool isChecked = false;
  late String taskTitle;
  final Function(bool?) checkboxCallback;

  //Constructor
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
