import 'package:flutter/material.dart';
import 'package:flutter_explore/components/welcome_menu.dart';

class WelcomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const WelcomeScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Experiments'),
        centerTitle: true,
        actions: [
          Switch(
              value: isDarkMode,
              onChanged: (value) {
                onToggleTheme();
              })
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              WelcomeMenu(
                  route: '/counter', title: 'Counter (Provider Exeriments)'),
              WelcomeMenu(route: '/slicing', title: 'Slicing Challenge'),
              WelcomeMenu(route: '/signup', title: 'Sign Up and Welcome'),
              WelcomeMenu(route: '/like', title: 'Like'),
              WelcomeMenu(route: '/toogle', title: 'Toogle'),
              WelcomeMenu(route: '/counter-cubit', title: 'Counter with Cubit'),
              WelcomeMenu(route: '/notes-cubit', title: 'Notes with Cubit'),
              WelcomeMenu(route: '/user', title: 'Users (API)'),
              WelcomeMenu(route: '/products', title: 'Products (API)')
            ],
          ),
        ),
      ),
    );
  }
}
