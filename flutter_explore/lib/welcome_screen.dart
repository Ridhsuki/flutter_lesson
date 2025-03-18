import 'package:flutter/material.dart';
import 'package:flutter_explore/components/welcome_menu.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Welcome to All of my Experiments of Flutter Journey',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            WelcomeMenu(
                route: '/counter', title: 'Counter (Provider Exeriments)'),
            WelcomeMenu(route: '/slicing', title: 'Slicing Challenge'),
            WelcomeMenu(route: '/signup', title: 'Sign Up and Welcome')
          ],
        ),
      ),
    );
  }
}
