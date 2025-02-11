import 'package:flutter/material.dart';
import 'package:flutter_explore/slicing_1.dart';
// import 'package:flutter_explore/slicing_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Slicing1(),
      // home: Slicing2(),
    );
  }
}
