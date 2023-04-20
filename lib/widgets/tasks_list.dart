import 'package:flutter/material.dart';
import '/widgets/task_tile.dart';
import '/models/task.dart';

class TaskList extends StatefulWidget {
  late final List<Task> tasks;

  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
} // class TaskList

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length, //itemBuilder
    );
  } //Widget build
} // class _TaskListState
