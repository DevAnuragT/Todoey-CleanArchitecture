import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/list_tile.dart';
import 'package:todoey/models/task.dart';
import '../models/task_data.dart';
import 'list_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return taskData.taskCount == 0
          ? Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'No tasks yet! Add your first task and stay organized!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      )
          : ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskListTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            toggleCheckBox: (checkboxState) {
              setState(() {
                taskData.toggleTask(task);
              });
            },
            longPressCallback: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Delete Task"),
                      content: Text(
                          "Are you sure you want to delete this task?"),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text("Delete"),
                          onPressed: () {
                            Navigator.of(context).pop();
                            taskData.deleteTask(task);
                          },
                        ),
                      ],
                    );
                  });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
