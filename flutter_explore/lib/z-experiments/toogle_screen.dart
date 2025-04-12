import 'package:flutter/material.dart';

class ToogleScreen extends StatefulWidget {
  const ToogleScreen({super.key});

  @override
  State<ToogleScreen> createState() => _ToogleScreenState();
}

class _ToogleScreenState extends State<ToogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toogle'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Center(
        child: Text("Toogle"),
      ),
    );
  }
}
