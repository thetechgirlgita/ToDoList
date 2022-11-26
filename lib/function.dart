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
    MainFunc(id: '01', todoText: "Finish Chemistry homework", isDone: true,),
    MainFunc(id: '02', todoText: "Finish Physical homework", isDone: false,),
    MainFunc(id: '03', todoText: "Finish Chemistry homework", isDone: false,),
    MainFunc(id: '04', todoText: "Finish Chemistry homework", isDone: true,),
    MainFunc(id: '05', todoText: "Finish Chemistry homework", isDone: true,),
    MainFunc(id: '06', todoText: "Finish Chemistry homework", isDone: false,),
    MainFunc(id: '07', todoText: "Finish Chemistry homework", isDone: true,),
  ];
}
}