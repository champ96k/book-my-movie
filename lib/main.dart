import 'package:book_my_movie/src/material_app_home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

Logger _log = Logger('main.dart');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kReleaseMode) {
    // Don't log anything below warnings in production.
    Logger.root.level = Level.WARNING;
  }
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: '
        '${record.loggerName}: '
        '${record.message}');
  });

  _log.info('App started in ${kDebugMode ? 'debug' : 'release'} mode 🚀');

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  _log.info('Going Portrait mode screen 👹');

  runApp(const MaterialAppHome());
}
