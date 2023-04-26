import 'package:flutter/cupertino.dart';

class ProviderOne extends ChangeNotifier {
  final int _total = 50000;
  int _used = 0;

  int get totalAmount => _total;
  int get usedAmount => _used;

  double get progress => _used / _total;

  void updateProgress(int used) {
    _used = used;

    notifyListeners();
  }

  // int _count = 0;
  //
  // int get count => _count;

  void Add() {
    _used += 1000;
    notifyListeners();
  }
  void Sub() {
    _used -= 1000;
    notifyListeners();
  }
}
