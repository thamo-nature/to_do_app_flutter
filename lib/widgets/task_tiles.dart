import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String userTaskTitle;
  final bool isUserFinished;
  final void Function(bool?) toggleCheckBoxState;

  const TaskTile({
    super.key,
    required this.userTaskTitle,
    required this.isUserFinished,
    required this.toggleCheckBoxState,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        userTaskTitle,
        style: TextStyle(
            decoration: isUserFinished ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: isUserFinished,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
