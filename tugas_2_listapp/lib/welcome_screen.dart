import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://media.istockphoto.com/id/1407451098/vector/3d-clipboard-task-plan-management.jpg?s=612x612&w=0&k=20&c=878F95d0qATSZ_h-u8Pt3uU4totuF2M4G03cGnM7jZ4=',
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome To ListApp',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'sebagai latihan stateful dan navigator',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100)),
              onPressed: () {
                Navigator.pushNamed(context, '/lists');
              },
              child: Text(
                'Start',
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
