import 'package:flutter/cupertino.dart';
import 'TaskModel.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = []; // contains all the task list

  addTaskInList() {
    TaskModel taskModel = TaskModel("title ${taskList.length}",
        "this is the task no. detail ${taskList.length}");
    taskList.add(taskModel);

    notifyListeners(); // observes all the changes and notifies the listeners.
  }
}
