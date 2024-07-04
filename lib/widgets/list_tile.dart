import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckBox;
  final Function() longPressCallback;
  TaskListTile({required this.taskTitle, required this.isChecked, required this.toggleCheckBox, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      leading: Icon(
        isChecked? Icons.check_circle_outline :
        Icons.pending_actions,
        size: 30,
        //Icons.check_circle_outline,
        color: Color(0xFF53367B),
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Color(0xFF53367B),
            fontWeight: FontWeight.w600,
            fontSize: 16,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:
          TaskCheck(checkboxState: isChecked, toggleCheckBox: toggleCheckBox),
    );
  }
}

class TaskCheck extends StatelessWidget {
  final Function(bool?) toggleCheckBox;
  final bool checkboxState;

  TaskCheck({required this.toggleCheckBox, required this.checkboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckBox,
    );
  }
}
