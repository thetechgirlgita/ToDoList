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

          color: const Color(0xff2da9ef),
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.list_alt_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: const Color(0xff2da9ef),
          foregroundColor: const Color(0xffffffff),
          child: const Icon(
            Icons.add,
            size: 36,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
