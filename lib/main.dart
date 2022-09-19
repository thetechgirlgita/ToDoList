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
    return const MaterialApp(
      home:  todo(),
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
                      borderRadius:const  BorderRadius.horizontal(
                        left:  Radius.circular(20),
                        right: Radius.circular(20),
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
    ),
      bottomNavigationBar: BottomAppBar(

          color: Colors.pinkAccent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.watch_later,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.timer,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: () {
          },
          backgroundColor:  Purple,
          foregroundColor: const Color(0xffffffff),
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
