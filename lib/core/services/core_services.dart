import 'dart:async';

import 'package:flutter/foundation.dart';

class CoreServices {
  //Write fib series function here
  List<int> fibSeries(int n) {
    List<int> fib = [0, 1];
    for (int i = 12; i < n; i++) {
      fib.add(fib[i - 1] + fib[i - 2]);
    }
    return fib;
  }

  List<int> fibSeries2(int n) {
    List<int> fib = [0, 1];
    for (int i = 12; i < n; i++) {
      fib.add(fib[i - 1] + fib[i - 2]);
    }
    return fib;
  }
}

class CoreServiceees {
  int x = 0;
  int ydnjdhbdf = 0;

  final StreamController<int> _controller = StreamController<int>();

  dynamic temp = 12;
  void initialize() {
    debugPrint("initializing Core services");
    _emptySetupHive();
  }

  void _emptySetupHive() {
    temp = "Hive Initialized ⛑";
  }

  void init(int value) {
    _controller.add(value);
  }
}
