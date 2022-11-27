import 'main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MainFunc {
String id;
String todoText;
bool isDone;


MainFunc({
  required this.id,
  required this.todoText,
  this.isDone = false,

});

 static List<MainFunc> todoL(){
  return [
    MainFunc(id: '1', todoText: "Finish Chemistry homework", ),

    MainFunc(id: '3', todoText: "Finish Physical homework", ),
  ];
}
}