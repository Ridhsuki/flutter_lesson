import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/provider_learn/counter/ui/counter_screen.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_cubit.dart';
import 'package:flutter_explore/cubit_learn/ui/cubit_screen.dart';
import 'package:flutter_explore/z_experiments/like_state.dart';
import 'package:flutter_explore/z_experiments/slicing_1.dart';
import 'package:flutter_explore/provider_learn/signup_and_welcome/provider/welcome_provider.dart';
import 'package:flutter_explore/provider_learn/signup_and_welcome/ui/greeting_screen.dart';
import 'package:flutter_explore/provider_learn/signup_and_welcome/ui/signup_screen.dart';
import 'package:flutter_explore/welcome_screen.dart';
import 'package:flutter_explore/z_experiments/toogle_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WelcomeProvider()),
      ],
      child: BlocProvider(
        create: (context) => CounterCubit(), 
        child: MyApp(),
      ),
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
        '/counter-cubit': (context) => CubitScreen(),
      },
    );
  }
}
