import 'package:todolist/function.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class todoList extends StatelessWidget {
  final MainFunc todo;
  final todoChangeStatus1;
  final DeleteItems;

  const todoList(
      {Key? key,
      required this.todo,
      required this.todoChangeStatus1,
      required this.DeleteItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: ListTile(
            onTap: () {
              todoChangeStatus1(todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.white,
            leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
            title: Text(todo.todoText),
            trailing: IconButton(
              color: IconColor,
              iconSize: 25,
              icon: Icon(Icons.delete),
              onPressed: () {
                DeleteItems(todo.id);
              },
            )));
  }
}
