import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_cubit.dart';
import 'package:flutter_explore/cubit_learn/cubit/counter_cubit/counter_state.dart';

class CubitScreen extends StatefulWidget {
  const CubitScreen({super.key});

  @override
  State<CubitScreen> createState() => _CubitScreenState();
}

class _CubitScreenState extends State<CubitScreen> {
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
        FloatingActionButton(
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
      ),
    );
  }
}

// add 3 dpeendencies bloc, flutter_bloc, equatable
// ctrl + shift + P => new cubit => counter
// Select a folder to put the "cubit" files in
// go to cubit\counter_state.dart and delete all code

// add code class CounterState extends Equatable 
// deklare the counterValue variable and add a constructor
// override the props method and return the counterValue
// add a copyWith method to the CounterState class

// go to cubit\counter_cubit.dart
// import CounterState
// edit class CounterCubit extends Cubit<CounterState> and super(CounterState())
// add the increment method and emit the state.copyWith(counterValue: state.counterValue + 1)

// go to main.dart and import the cubit files
// add BlocProvider and create: (context) => CounterCubit()

// go to cubit_screen.dart
// add BlocBuilder<CounterCubit, CounterState> to the body of the Scaffold
// add the builder method and return the Text widget with the state.counterValue.toString()
// add the FloatingActionButton and call the increment method on the CounterCubit when pressed with context.read<CounterCubit>().increment()
