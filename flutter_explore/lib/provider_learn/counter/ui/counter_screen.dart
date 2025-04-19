import 'package:flutter/material.dart';
import 'package:flutter_explore/provider_learn/counter/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<CounterProvider>(
                    builder: (context, counterValue, widget) {
                  return Text(
                    counterValue.counter.toString(),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<CounterProvider>(
                        builder: (context, state, widget) {
                      return IconButton(
                        onPressed: () {
                          state.remove();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Color(0xaaffffff),
                        ),
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.red),
                      );
                    }),
                    SizedBox(width: 90),
                    Consumer<CounterProvider>(
                        builder: (context, state, widget) {
                      return IconButton(
                        onPressed: () {
                          state.add();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Color(0xaaffffff),
                        ),
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.green),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
