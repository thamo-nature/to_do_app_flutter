import 'package:flutter/foundation.dart';
import 'package:to_do_flutter/modals/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> usertasks = [
    Task(userTask: 'Elon Musk', isUserFinished: true),
    Task(userTask: 'Mark Zuckerberg', isUserFinished: true),
    Task(userTask: 'Jeff Bezos', isUserFinished: true),
  ];

  int get tasksCount {
    return usertasks.length;
  }

  void addTasks(String userAddingTask) {
    final newTask = Task(userTask: userAddingTask, isUserFinished: false);
    usertasks.add(newTask);
    notifyListeners();
  }
}
