import 'package:flutter/material.dart';
import '/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  //TODO Section 207 video 8:20 how to avoid using tasks incorrectly. Make it _tasks
  List<Task> _tasks = [
    Task(name: 'Paint boat'),
    Task(name: 'Sand hull'),
    Task(name: 'Run rigging'),
  ];

  //TODO Section 206 video 17:35 using a getter to refactor the tasks.length code in two areas
  int get taskCount {
    return _tasks.length;
  } // get taskCount

  //TODO Section 207 video 9:35 using a getter to refactor and deal with a private variable. Note that her code return _tasks; does not work and then later she explains the fix.
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

//TODO section 207 video 5:30 create method using notifyListeners() in tasks_data.dart
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  } // addTask

//TODO section 208 video 2:50 get rid of set state in task_list.dart
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  } // updateTask

//TODO Section 209 video 3:15 delete task method for callback
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  } //deleteTask
} //class
