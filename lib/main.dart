import 'package:flutter/material.dart';
import 'constants.dart';

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
    return   MaterialApp(
      home:  const todo(
      ),
      theme:   ThemeData.dark()

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
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("TODO",
          style: tStyle(30, Purple),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Container(
              height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width/1.3,
              color: Colors.white,
            )]),
          ],
        ),

      )
    );
  }
}
