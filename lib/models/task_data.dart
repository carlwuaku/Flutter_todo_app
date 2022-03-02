import 'package:flutter/foundation.dart';
import 'package:todoey/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Learn Flutter"),
    Task(name: "Learn Android"),
    Task(name: "Learn React"),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  addTask(Task newitem) {
    _tasks.add(newitem);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
