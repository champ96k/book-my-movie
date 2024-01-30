import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/video_player_cubit/video_player_cubit.dart';
import 'package:book_my_movie/generated/colors.gen.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key, required this.movidId});

  final int movidId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoPlayerCubit(
        repository: GetIt.I<MoviesRepositoryImp>(),
        movidId: movidId,
      ),
      child: const VideoPlayerScreenContent(),
    );
  }
}

class VideoPlayerScreenContent extends StatelessWidget {
  const VideoPlayerScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, state) {
          if (state is VideoPlayerLoadingState) {
            return const LoadingScreen();
          } else if (state is VideoPlayerLoadedState) {
            return PrimaryVideoPlayer(videoId: state.videoId);
          } else if (state is VideoPlayerErrorState) {
            return ErrorScreen(errorMessage: state.errorMessage);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class PrimaryVideoPlayer extends StatefulWidget {
  const PrimaryVideoPlayer({super.key, required this.videoId});

  final String videoId;

  @override
  State<PrimaryVideoPlayer> createState() => _PrimaryVideoPlayerState();
}

class _PrimaryVideoPlayerState extends State<PrimaryVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        enableCaption: true,
      ),
    );
    _controller.toggleFullScreenMode();
    _setLandscapeMode();
    super.initState();
  }

  /// Function to set landscape mode
  void _setLandscapeMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void _setPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Reset to portrait mode when the widget is disposed
    _setPortraitMode();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
              controlsTimeOut: const Duration(seconds: 5),
              onEnded: (_) => Navigator.pop(context),
            ),
            builder: (context, player) {
              return Center(child: player);
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: ColorName.primaryColor,
                  size: 30,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
