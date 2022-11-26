import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/todo_list.dart';
import 'constants.dart';

class todo extends StatefulWidget {
  const todo({Key? key}) : super(key: key);
  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBar(), // a method calling function which is present in constant.dart file

      backgroundColor: AB,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  todoList()
                ],

              )
            )// a method calling search box fubction from constant.dart file.
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconB(
              () {},
              Icons.watch_later,
              Colors.white,
              32,
            ),
            IconB(
              () {},
              Icons.timer,
              Colors.white,
              32,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: const Color(0xffffffff),
        child: IconB(() {}, Icons.add, IconColor,
            35), //a method calling function which is present in constant.dart file
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
