// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function onAdd;
  TextEditingController nameController = TextEditingController();
  AddTaskScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Text(
                  "Add Task",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  controller: nameController,
                ),
                SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                    onPressed: () {
                      Task newitem = Task(name: nameController.text);

                      context.read<TaskData>().addTask(newitem);
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 15),
                    ))
              ],
            ),
          )),
    );
  }
}
