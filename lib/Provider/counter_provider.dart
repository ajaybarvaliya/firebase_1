import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }
}
