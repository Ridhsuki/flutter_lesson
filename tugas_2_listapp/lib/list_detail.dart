import 'package:flutter/material.dart';

class ListDetail extends StatelessWidget {
  const ListDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          'Detail List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is list detail screen, but i dont know yet how to get data from lists.dart at this page',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
