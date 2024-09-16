import 'dart:async';

class CoreServices {
  //Write fib series function here
  List<int> fibSeries(int n) {
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
    print("initializing Core services");
    _emptySetupHive();
  }

  void _emptySetupHive() {
    temp = "Hive Initialized ⛑";
  }

  _init(int value) {
    _controller.add(value);
  }
}
