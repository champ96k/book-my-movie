import 'dart:async';

import 'package:book_my_movie/core/dependency_injection/service_locator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

class AppServicesController {
  static final Logger _log = Logger('AppServicesController.dart');

  Future<void> initialize() async {
    try {
      _log.info('initializing App services');
      await _setupHive();
      serviceLoactor();
    } catch (e) {
      _log.severe('Cannot initialize AppServices: $e');
    }
  }

  Future<void> _setupHive() async {
    await Hive.initFlutter();

    _log.info('Hive Initialized ⛑');
  }
}
