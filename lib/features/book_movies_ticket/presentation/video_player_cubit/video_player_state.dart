part of 'video_player_cubit.dart';

abstract class VideoPlayerState extends Equatable {}

class VideoPlayerInitialState extends VideoPlayerState {
  @override
  List<Object?> get props => ['VideoPlayerInitialState'];
}

class VideoPlayerLoadingState extends VideoPlayerState {
  @override
  List<Object?> get props => ['VideoPlayerLoadingState'];
}

class VideoPlayerLoadedState extends VideoPlayerState {
  VideoPlayerLoadedState({required this.videoId});
  final String videoId;

  @override
  List<Object?> get props => [videoId];
}

class VideoPlayerErrorState extends VideoPlayerState {
  VideoPlayerErrorState(this.errorMessage);
  final String errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
