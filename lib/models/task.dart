import 'package:flutter/material.dart';

class Task {
  // Properties
  late final String name;
  late bool isDone;

  // Methods
  void toggleDone() {
    isDone = !isDone;
  } // toggleDone

  Task({required this.name, this.isDone = false});
} //class Task
