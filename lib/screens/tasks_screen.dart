import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/modals/task_data.dart';
import 'package:to_do_flutter/widgets/task_lists.dart';
import 'package:to_do_flutter/screens/add_tasks_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddTasksScreen(),
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.lightBlueAccent),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 60),
              width: double.infinity,
              //color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.list, color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'TODO List',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasksCount.toString()} Tasks',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: const TaskList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
