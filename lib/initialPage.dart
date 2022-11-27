import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/todo_list.dart';
import 'function.dart';
import 'constants.dart';

class todo extends StatefulWidget {
  todo({Key? key, id}) : super(key: key);

  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  final todosList = MainFunc.todoL();
  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBar(), // a method calling function which is present in constant.dart file

      backgroundColor: AB,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            SearchBox(),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35, bottom: 20),
                  child: Text(
                    "All ToDos",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                for (MainFunc todo in todosList)
                  todoList(
                    todo: todo,
                    todoChangeStatus1: todoChangeStatus,
                    DeleteItems: DeleteItemList,
                  )
              ],
            )), // a method calling search box fubction from constant.dart file.
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                openDialog();
                //AddTodoItems(todoController.text);
                print(todoController.text);
              },
            ),
          ],
        ),
      ));}

    Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(

        title: Text("New Todo"),
        content: TextField(
          controller: todoController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            hintText: "Type here......",
          ),
        ),
        actions: [
          ElevatedButton(
            child: Text("Create"),
            onPressed: () {

              //AddItemsList();
            },)]));




  void todoChangeStatus(MainFunc todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void AddTodoItems(String Text) {
    print(Text);
    setState(() {
      todosList.add(MainFunc(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: Text,
      ));
    }

    );

    todoController.clear();
  }

  void DeleteItemList(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }
}
