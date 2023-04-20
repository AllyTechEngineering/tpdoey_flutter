import 'package:flutter/material.dart';
import '/widgets/task_tile.dart';
import 'package:tpdoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';
// import '/models/task.dart';

class TaskList extends StatelessWidget {
  //TODO section 206 video 12:15 change to StatelessWidget
  // TODO section 206 video 10:40  comment out the code and import task.dart. Import task_data.dart and provider.dart
  // late final List<Task> tasks;
  //
  // TaskList(this.tasks);

//   @override
//   State<TaskList> createState() => _TaskListState();
// } // class TaskList
//
// class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    //TODO section 206 video 11:00
    // TODO section 206 video 14:45 refactoring code by using Consumer Widget
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              // TODO section 206 video 11:14 (the commented code - refactored around video 14:60)
              // isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              // taskTitle: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
          },
          //TODO Section 206 video 17:35 using a getter to refactor the tasks.length code in two areas
          // itemCount: taskData.tasks.length,
          itemCount: taskData.taskCount, //itemBuilder
        );
      },
    );
  } //Widget build
} // class _TaskListState
