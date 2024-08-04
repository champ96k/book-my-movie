import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'base_state.dart';

class GenericBlocBuilder<C extends Cubit<S>, S extends BaseState>
    extends StatelessWidget {
  const GenericBlocBuilder({
    required this.builder,
    this.loadingWidget,
    this.errorWidget,
    this.cubit,
    super.key,
  });

  final Widget Function(BuildContext context, S state) builder;
  final Widget? loadingWidget;
  final Widget Function(String message)? errorWidget;
  final C Function(BuildContext context)? cubit;

  @override
  Widget build(BuildContext context) {
    if (cubit != null) {
      return BlocProvider<C>(
        create: (context) => cubit!(context),
        child: _buildBlocContent(context),
      );
    } else {
      return _buildBlocContent(context);
    }
  }

  Widget _buildBlocContent(BuildContext context) {
    return BlocBuilder<C, S>(
      builder: (context, state) {
        if (state is LoadingState) {
          return loadingWidget ?? const LoadingScreen();
        } else if (state is ErrorState) {
          return errorWidget?.call(state.errorMessage) ??
              ErrorScreen(errorMessage: state.errorMessage);
        } else {
          return builder(context, state);
        }
      },
    );
  }
}
