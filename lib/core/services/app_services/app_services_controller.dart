import 'dart:async';

import 'package:book_my_movie/core/dependency_injection/service_locator.dart';
import 'package:book_my_movie/core/hive/hive_config.dart';
import 'package:book_my_movie/features/booked_movies/data/models/booked_movie_model.dart';
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

    // Register adapter if not already registered
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(BookedMovieModelAdapter());
    }

    // Open the box only if it's not already open
    if (!Hive.isBoxOpen(HiveConfig.movieBox)) {
      await Hive.openBox<BookedMovieModel>(HiveConfig.movieBox);
      _log.info('Hive Box Opened: ${HiveConfig.movieBox}');
    }

    _log.info('Hive Initialized ⛑');
  }
}
