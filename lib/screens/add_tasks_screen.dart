import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/modals/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String userInputTaskName;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Add Task'),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (someTextFromUser) {
                userInputTaskName = someTextFromUser;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.lightBlue,
              //width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context).addTasks(userInputTaskName);
                  Navigator.pop(context);
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
