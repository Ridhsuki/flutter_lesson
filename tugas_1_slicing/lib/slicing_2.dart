import 'package:flutter/material.dart';

class Slicing2 extends StatelessWidget {
  const Slicing2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 72),
        child: Column(
          children: [
            Text(
              'Selling the most popular NFT is only here',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
