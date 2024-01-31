import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/ticket_booking/data/datasources/local_sources/cinema_local_sources.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:book_my_movie/features/ticket_booking/domain/repositories/cinema_repository.dart';

class CinemasRepositoryImp extends CinemasRepository {
  CinemasRepositoryImp({required this.dataSources});

  final CinemasLocalDataSources dataSources;

  @override
  Future<Result<CinemaListModel>> getCinemasList() {
    return dataSources.getCinemasList();
  }
}
