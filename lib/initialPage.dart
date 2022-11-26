import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/todo_list.dart';
import 'function.dart';
import 'constants.dart';

class todo extends StatefulWidget {
  todo({Key? key}) : super(key: key);

  final todosList = MainFunc.todoL();
  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  final todosList = MainFunc.todoL();
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
              child:
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35, bottom: 20),
                    child: Text("All ToDos",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  for( MainFunc todo in todosList )
                    todoList(todo: todo,)

                ],

              )
            )// a method calling search box fubction from constant.dart file.
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 50,

        ),


      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: const Color(0xffffffff),
        child: IconB(() {}, Icons.add, IconColor,
            30), //a method calling function which is present in constant.dart file
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
