import 'package:flutter/material.dart';
import 'package:todoey_app/model/task_data.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return ListsTile(
              isChecked: task.isDone,
              textTitle: task.taskName,
              checkBoxCallback: (bool changedValue) {
                taskData.updateTask(task);
              },
              taskDelete: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
