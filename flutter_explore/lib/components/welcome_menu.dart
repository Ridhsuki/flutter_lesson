import 'package:flutter/material.dart';

class WelcomeMenu extends StatelessWidget {
  const WelcomeMenu({super.key, required this.route, required this.title});

  final String route;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: SizedBox(
            height: 90,
            width: double.infinity,
            child: Card(
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
