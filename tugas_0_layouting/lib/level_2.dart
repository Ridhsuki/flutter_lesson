import 'package:flutter/material.dart';

//? BreakDown Level 2
void main() {
  runApp(Level2());
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Level 2'),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.person_2_rounded),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
