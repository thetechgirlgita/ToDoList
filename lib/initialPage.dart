import 'package:flutter/material.dart';
import 'constants.dart';

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
        child: Center(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width / 1.02,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Purple,
                  Colors.redAccent,
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Center(
              child: tStyle(
                date.toString() + "\nNo Todo task today.",
                20,
                Colors.white,
              ),
            ),
            Container(
              color: Purple,
              height: 200,

            )
          ]),
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconB(
              () {},
              Icons.watch_later,
              Colors.white,
              32,
            ),
            IconB(
              () {},
              Icons.timer,
              Colors.white,
              32,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Purple,
        foregroundColor: const Color(0xffffffff),
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
