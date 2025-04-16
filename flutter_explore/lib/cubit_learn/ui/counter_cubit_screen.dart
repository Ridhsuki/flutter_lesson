import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_cubit.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_state.dart';

class CounterCubitScreen extends StatelessWidget {
  const CounterCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Content();
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cubit Counter',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
            fontFamily: 'RobotoMono',
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
                fontFamily: 'RobotoMono',
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Orbitron',
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'decrement',
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  heroTag: 'reset',
                  onPressed: () {
                    context.read<CounterCubit>().resetValue();
                  },
                  backgroundColor: Colors.orangeAccent,
                  child: Icon(
                    Icons.refresh,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  heroTag: 'increment',
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  backgroundColor: Colors.cyanAccent,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
