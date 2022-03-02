import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;
  const TaskTile(
      {required this.isChecked,
      required this.title,
      required this.checkboxCallback,
      required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newval) {
          checkboxCallback(newval);
        },
      ),
      onLongPress: () {
        longPressCallback();
      },
    );
  }
}
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function checkboxChanged;
//   const TaskCheckbox(
//       {required this.checkboxState, required this.checkboxChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       onChanged: (newval) {
//         checkboxChanged(newval);
//       },
//       activeColor: Colors.black54,
//     );
//   }
// }
