import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';
import 'package:todoey_app/screens/TasksScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
