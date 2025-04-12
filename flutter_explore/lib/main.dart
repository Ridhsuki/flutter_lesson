import 'package:flutter/material.dart';
import 'package:flutter_explore/counter/ui/counter_screen.dart';
import 'package:flutter_explore/z-experiments/like_state.dart';
import 'package:flutter_explore/z-experiments/slicing_1.dart';
import 'package:flutter_explore/signup%20&%20welcome/provider/welcome_provider.dart';
import 'package:flutter_explore/signup%20&%20welcome/ui/greeting_screen.dart';
import 'package:flutter_explore/signup%20&%20welcome/ui/signup_screen.dart';
import 'package:flutter_explore/welcome_screen.dart';
import 'package:flutter_explore/z-experiments/toogle_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WelcomeProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/slicing': (context) => Slicing1(),
        '/counter': (context) => CounterScreen(),
        '/signup': (context) => SignupScreen(),
        '/greeting': (context) => GreetingScreen(),
        '/like': (context) => LikeState(),
        '/toogle': (context) => ToogleScreen(),
      },
    );
  }
}
