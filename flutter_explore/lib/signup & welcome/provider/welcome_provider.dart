import 'package:flutter/material.dart';

class WelcomeProvider extends ChangeNotifier {
  String? user;

  newUser(String newUser) {
    user = newUser;
    notifyListeners();
  }
}
