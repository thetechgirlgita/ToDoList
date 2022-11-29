import 'package:flutter/material.dart';
import 'function.dart';
import 'initialPage.dart';
import 'todo_list.dart';

final todoController = TextEditingController();


//-----------------------------------------------------------------Colors and variables ---------------------------------------------------------------------//

final Color AB = Color(0xFFEEEEFF5); // AppBar backgornd colour
//final Color Card = Color(0xff);
final Color IconColor = Color(0xFF3A3A3A);
final DateTime date = DateTime.now();

//-------------------------------------------------------------------Methods-----------------------------------------------------------------------------//

tStyle(
  String text,
  double size,
  Color color,
) {
  return Text(text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ));
}

IconB(
  Function onTap,
  IconData icon,
  Color color,
  double size,
) {
  return IconButton(
    onPressed: onTap(),
    icon: Icon(
      icon,
      color: color,
      size: size,
    ),
  );
}
//-----------------------------------------------------------------------------Function---------------------------------------------------------------------//

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: AB,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconB(() {}, Icons.menu, IconColor, 35),
        Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("Images/MyFormal.jpg"),
            ))
      ],
    ),
  );
}




