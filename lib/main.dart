import 'package:flutter/material.dart';

void main(){
  runApp(TODO(),);
}

class TODO extends StatefulWidget {
  const TODO({Key? key}) : super(key: key);

  @override
  _TODOState createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: todo(),
      color: Colors.pinkAccent,
      
    );
  }
}

class todo extends StatefulWidget {
  const todo({Key? key}) : super(key: key);

  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
