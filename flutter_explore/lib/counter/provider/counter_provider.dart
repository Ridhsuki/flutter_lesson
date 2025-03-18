import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  add() {
    counter++;
    // print(counter);
    notifyListeners();
  }

  remove() {
    counter--;
    // print(counter);
    notifyListeners();
  }
}
