import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({Key? key}) : super(key: key);
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback, {super.key});

  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF6a6a6a),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue, width: 3.0)), hintText: 'Enter a new task'),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(height: 20),
              TextButton(
                child: const Text('Add'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.lightBlueAccent,
                  textStyle: const TextStyle(fontSize: 30, color: Colors.white),
                ),
                onPressed: () {
                  //TODO section 207 video 6:41 this is using the method created in task_data.dart - she did not say you needed to have (context, listen: false). Without that you will crash.
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                  // addTaskCallback(newTaskTitle);
                  // print('This is the newTaskTitle in add_tasks_screen: $newTaskTitle');
                },
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
      ),
    );
  } //Widget
} //class
