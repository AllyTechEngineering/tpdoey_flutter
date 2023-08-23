import 'package:flutter/material.dart';
import '/widgets/task_tile.dart';
import 'package:tpdoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';
// import '/models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount, //itemBuilder
        );
      },
    );
  } //Widget build
} // class _TaskListState

//TODO section 206 video 11:00
// TODO section 206 video 14:45 refactoring code by using Consumer Widget
//TODO section 208 video 2:50 get rid of set state in task_list.dart
// setState(() {
//   Provider.of<TaskData>(context).tasks[index].toggleDone();
// });
//  TODO Section 209 video 3:00 add callback to task_data.dart for deleting a task, Then back at video 3:54 for updating the callback.
//TODO Section 206 video 17:35 using a getter to refactor the tasks.length code in two areas
// itemCount: taskData.tasks.length,
//TODO Section 209 video 2:12 on long press to delete a task
// TODO section 206 video 11:14 (the commented code - refactored around video 14:60)
// isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
// taskTitle: Provider.of<TaskData>(context).tasks[index].name,
// Refactored code commented out below and replaced with task. :
// isChecked: taskData.tasks[index].isDone,
// taskTitle: taskData.tasks[index].name,

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
