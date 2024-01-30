import 'package:book_my_movie/core/network/network_info.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

GetIt getIt = GetIt.instance;

final Logger _log = Logger('serviceLoactor');

void serviceLoactor() {
  _log.info('dependency injection ⛩');

  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
}
