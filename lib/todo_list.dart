import 'package:todolist/function.dart';
import 'package:todolist/initialPage.dart';

import 'main.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class todoList extends StatelessWidget {
  final MainFunc todo;
  const todoList({Key? key, required this.todo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: ListTile(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: IconB((){},
             todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
            Colors.blue, 30),
        title: Text(todo.todoText),
        trailing: IconB((){print("deleted");}, Icons.delete, IconColor, 30)


      )
    );
  }
}
