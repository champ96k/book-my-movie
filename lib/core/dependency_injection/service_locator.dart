import 'package:book_my_movie/core/network/network_info.dart';
import 'package:book_my_movie/core/services/network_services/dio_http_service.dart';
import 'package:book_my_movie/core/services/network_services/http_service.dart';
import 'package:book_my_movie/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:book_my_movie/core/services/shared_preferences/my_shared_preferences_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/datasources/movies_data_sources.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/ticket_booking/data/datasources/local_sources/cinema_local_sources.dart';
import 'package:book_my_movie/features/ticket_booking/data/repositories/cinemas_repository_imp.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

GetIt getIt = GetIt.instance;

final Logger _log = Logger('serviceLoactor');

void serviceLoactor() {
  _log.info('dependency injection ⛩');

  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  getIt.registerFactory<HttpService>(() => DioHttpService());

  getIt.registerFactory<MySharedPreferences>(() => MySharedPreferencesImp());

  getIt.registerFactory<MoviesDataSources>(
    () => MoviesDataSources(
      httpService: getIt.get<HttpService>(),
    ),
  );

  getIt.registerFactory<MoviesRepositoryImp>(
    () => MoviesRepositoryImp(
      remoteDataSource: getIt.get<MoviesDataSources>(),
    ),
  );

  getIt.registerFactory<CinemasLocalDataSources>(
    () => CinemasLocalDataSources(),
  );

  getIt.registerFactory<CinemasRepositoryImp>(
    () => CinemasRepositoryImp(
      dataSources: getIt.get<CinemasLocalDataSources>(),
    ),
  );
}
