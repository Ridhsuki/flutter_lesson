import 'package:flutter/material.dart';

//? BreakDown Level 1
void main() {
  runApp(Level1());
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),
          title: Text('Instagram'),
          actions: [
            Icon(Icons.import_contacts),
            Icon(Icons.ac_unit_outlined),
          ],
        ),
        body: 
        Column(
          children: [
            Row(
              spacing: 20,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ],
            ),
            Column(
              spacing: 20,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
