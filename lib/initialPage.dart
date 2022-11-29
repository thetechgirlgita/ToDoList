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
  List<MainFunc> searchFile = [];

  @override
  void initState() {
    searchFile = todosList;
    // TODO: implement initState
    super.initState();
  }

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
                  for (MainFunc todo in searchFile)

                    todoList(
                      todo: todo,
                      todoChangeStatus1: todoChangeStatus,
                      DeleteItems: DeleteItemList,
                    )
                ],
              )),
              Container(
                height: 100,
                width:  70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child:// a method calling search box fubction from constant.dart file.
              IconButton(

                icon: Icon(Icons.add,
                  size: 30,
                ),
                onPressed: () {
                  openDialog();
                 // print(todoController.text);
                },
              ),)
            ],
          ),
        ));
  }

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
                    Navigator.pop(context);
                     AddTodoItems(todoController.text);
                  },
                )
              ]));

  void todoChangeStatus(MainFunc todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void searchItems(String input){
    List<MainFunc> result = [];
    if ( input.isEmpty){
      result = todosList;
    }
    else {
      result = todosList
          .where((item) => item.todoText!
          .toLowerCase()
          .contains(input.toLowerCase()))
          .toList();
    }
    setState(() {
      searchFile = result;
    });
  }
  Container SearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => searchItems(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: IconColor,
          ), //a method calling function which is present in constant.dart file
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search",
        ),
      ),
    );
  }

  AddTodoItems(String Text) {
    //print(Text);

    setState(() {

      todosList.add(MainFunc(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: Text,

      ));
    });

    todoController.clear();
  }

  void DeleteItemList(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }
}
