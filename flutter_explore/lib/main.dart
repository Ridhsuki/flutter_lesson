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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  void toDark() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode == true ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(
              isDarkMode: isDarkMode,
              onToggleTheme: toDark,
            ),
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
