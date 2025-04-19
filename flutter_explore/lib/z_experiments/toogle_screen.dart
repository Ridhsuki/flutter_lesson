import 'package:flutter/material.dart';

class ToogleScreen extends StatefulWidget {
  const ToogleScreen({super.key});

  @override
  State<ToogleScreen> createState() => _ToogleScreenState();
}

class _ToogleScreenState extends State<ToogleScreen> {
  bool isActive = false;

  void actived() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isActive == true ? Colors.black : Colors.white,
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
          child: Switch(
              value: isActive,
              onChanged: (value) {
                actived();
              })),
    );
  }
}
