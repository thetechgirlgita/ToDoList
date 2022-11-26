import 'package:flutter/material.dart';


final DateTime date = DateTime.now();

final Color IconColor = Color(0xFF3A3A3A);

final Color AB = Color(0xFFEEEEFF5); // AppBar backgornd colour
//final Color Card = Color(0xff);

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

)
{
  return IconButton(
    onPressed: onTap(),
    icon:  Icon(
     icon,
      color: color,
      size: size,
    ),
  );


}