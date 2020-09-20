import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_app/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Hello', isDone: false),
    Task(taskName: 'Hello', isDone: false),
    Task(taskName: 'Hello', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  addTask(String newTask) {
    final task = Task(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
