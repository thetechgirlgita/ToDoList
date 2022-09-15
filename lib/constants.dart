import 'package:flutter/material.dart';

final String dateT = "";
final DateTime date = DateTime.parse(dateT);

final Color Purple = Color(0xffd269ef);
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
