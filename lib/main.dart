import 'package:flutter/material.dart';
import 'constants.dart';

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
    return MaterialApp(
      home: const todo(),
      //  theme: ThemeData.dark()
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
        /*  appBar: AppBar(
          backgroundColor: Purple,
          elevation: 0,

          title: tStyle(
            "TODO",
            25,
            Colors.white,
          ),
          centerTitle: true,
        ),*/
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.36,
                    width: MediaQuery.of(context).size.width / 1.02,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: const Radius.circular(20),
                        right: const Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors : [
                        Purple,
                          Colors.redAccent,

                      ],
                      begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      )
                    ),
                    child: Center(
                      child: tStyle(
                        date.toString() + "\nNo Todo task today.",
                        20,
                        Colors.white,
                      ),
                    )),
              ]),
        ],
      ),
    ));
  }
}
