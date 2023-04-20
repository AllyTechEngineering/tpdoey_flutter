import 'package:flutter/material.dart';
import '/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Paint boat'),
    Task(name: 'Sand hull'),
    Task(name: 'Run rigging'),
  ];

  //TODO Section 206 video 17:35 using a getter to refactor the tasks.length code in two areas
  int get taskCount {
    return tasks.length;
  } // get taskCount
} //class
