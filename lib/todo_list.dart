import 'main.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class todoList extends StatelessWidget {
  const todoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: IconB((){}, Icons.check_box, Colors.blue, 25),
        title: Text("Gita's Birthday"),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            print("Delete");
          },

        ),
      )
    );
  }
}
