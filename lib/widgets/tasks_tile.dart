import 'package:flutter/material.dart';

class ListsTile extends StatelessWidget {
  final bool isChecked;
  final String textTitle;
  final Function checkBoxCallback;
  final Function taskDelete;

  ListsTile(
      {this.isChecked, this.textTitle, this.checkBoxCallback, this.taskDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: taskDelete,
      title: Text(
        textTitle,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
