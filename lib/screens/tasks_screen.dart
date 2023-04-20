import 'package:flutter/material.dart';
import '/screens/add_task_screen.dart';
import '/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:tpdoey_flutter/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  //TODO section 206 video 12:46 change to stateless

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newTaskTitle) {
                  //TODO adding new to-do list tasks section 207
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTitle));
                  // });
                  Navigator.pop(context);
                }),
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 35.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'My To Do List',
                  style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w700),
                ),
                Text(
                  //TODO video 8:15 section 206 convert to Provider.of for tasks list length - this will be refactored
                  // '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  //TODO Section 206 video 17:35 using a getter to refactor the tasks.length code in two areas
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              // TODO section 206 video 10:25
              child: TaskList(),
            ),
          ),
        ], // children
      ),
    );
  }
} // class
