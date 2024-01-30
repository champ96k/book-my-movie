import 'package:book_my_movie/core/network/network_info.dart';
import 'package:book_my_movie/core/services/network_services/dio_http_service.dart';
import 'package:book_my_movie/core/services/network_services/http_service.dart';
import 'package:book_my_movie/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:book_my_movie/core/services/shared_preferences/my_shared_preferences_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/sources/remote_sources/movies_remote_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

GetIt getIt = GetIt.instance;

final Logger _log = Logger('serviceLoactor');

void serviceLoactor() {
  _log.info('dependency injection ⛩');

  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  getIt.registerFactory<HttpService>(() => DioHttpService());

  getIt.registerFactory<MySharedPreferences>(() => MySharedPreferencesImp());

  getIt.registerFactory<MoviesRemoteDataSource>(
    () => MoviesRemoteDataSource(
      httpService: getIt.get<HttpService>(),
    ),
  );

  getIt.registerFactory<MoviesRepositoryImp>(
    () => MoviesRepositoryImp(
      remoteDataSource: getIt.get<MoviesRemoteDataSource>(),
    ),
  );
}
