import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_videos_model/movie_videos_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerCubit({
    required this.repository,
    required this.movidId,
  }) : super(VideoPlayerInitialState()) {
    _getVideoURL();
  }

  final MoviesRepository repository;
  final int movidId;

  void _getVideoURL() async {
    emit(VideoPlayerLoadingState());
    final _result = await repository.getMovieVideoURL(movidId);
    if (_result.data != null) {
      final result =
          _result.data?.results?.firstWhere((e) => e.site == Site.youTube);
      emit(VideoPlayerLoadedState(videoId: result?.key ?? ''));
    } else {
      emit(VideoPlayerErrorState(_result.error?.message ?? ''));
    }
  }
}
