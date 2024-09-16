import 'dart:async';

class CoreServices {
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
