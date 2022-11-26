import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'initialPage.dart';

void main() {
  runApp(
    TODO(),
  );
}

class TODO extends StatefulWidget {
  const TODO({Key? key}) : super(key: key);

  @override
  _TODOState createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return  MaterialApp(
      home: todo(),
      //  theme: ThemeData.dark()
    );
  }
}



