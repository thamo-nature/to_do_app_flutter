import 'package:provider/provider.dart';
import 'package:to_do_flutter/widgets/task_tiles.dart';
import 'package:flutter/material.dart';
import 'package:to_do_flutter/modals/task_data.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              userTaskTitle: taskData.usertasks[index].userTask,
              isUserFinished: taskData.usertasks[index].isUserFinished,
              toggleCheckBoxState: (bool? somethingAnonymous) {
                // setState(() {
                //   usertasks[index].toggleisUserFinished();
                // });
              },
            );
          },
          itemCount: taskData.usertasks.length,
        );
      },
    );
  }
}
