import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/screens/tasks_screen.dart';
import 'package:to_do_flutter/modals/task_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
