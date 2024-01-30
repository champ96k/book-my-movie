import 'package:book_my_movie/core/app_configs/route_generator.dart';
import 'package:book_my_movie/core/app_theme/theme.dart';
import 'package:book_my_movie/core/services/app_services/app_services_controller.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/cubit/book_movies_ticket_cubit.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/home_page.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('MaterialAppHome.dart');

class MaterialAppHome extends StatefulWidget {
  const MaterialAppHome({super.key});

  @override
  State<MaterialAppHome> createState() => _MaterialAppHomeState();
}

class _MaterialAppHomeState extends State<MaterialAppHome> {
  bool _initialized = false;
  bool _error = false;
  String errorString = '';

  @override
  void initState() {
    _initializeAppServices();
    super.initState();
  }

  void _initializeAppServices() async {
    try {
      final AppServicesController _appServices = AppServicesController();
      await _appServices.initialize();
      if (mounted) setState(() => _initialized = true);
      _log.info("_initialized: done");
    } on Exception catch (e) {
      errorString = e.toString();
      _log.info("_initialized error $errorString");
      if (mounted) setState(() => _error = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return MaterialApp(
        title: 'BookMy Movies',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generate,
        home: ErrorScreen(errorMessage: errorString),
      );
    }

    if (!_initialized) {
      return MaterialApp(
        title: 'BookMy Movies',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generate,
        home: const LoadingScreen(),
      );
    } else {
      return BlocProvider<BookMoviesTicketCubit>(
        create: (context) => BookMoviesTicketCubit(
          repository: GetIt.I<MoviesRepositoryImp>(),
        ),
        child: MaterialApp(
          title: 'BookMy Movies',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generate,
          home: const HomePage(),
        ),
      );
    }
  }
}
