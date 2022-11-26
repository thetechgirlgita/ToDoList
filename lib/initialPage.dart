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
        appBar: AppBar(
          backgroundColor: AB,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconB(() {}, Icons.menu, IconColor, 40),
              Container(
                height: 40,
                width: 40,
                child:
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("Images/MyFormal.jpg"),))
            ],
          ),
        ),
        body: Scaffold(
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
            foregroundColor: const Color(0xffffffff),
            child: IconB(() {}, Icons.add, IconColor, 35),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
