import 'package:flutter/material.dart';
import 'package:flutter_lesson/level_1.dart';
import 'package:flutter_lesson/level_2.dart';
import 'package:flutter_lesson/level_3.dart';
import 'package:flutter_lesson/practice.dart';
// import 'package:flutter_lesson/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // want to see this project? uncomment this line below!
      // home: Level1(),
      // home: Level2(),
      // home: Level3(),
    );
  }
}
