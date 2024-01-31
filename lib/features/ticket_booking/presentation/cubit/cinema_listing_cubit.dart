import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:book_my_movie/features/ticket_booking/domain/repositories/cinema_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cinema_listing_state.dart';

class CinemaListingCubit extends Cubit<CinemaListingState> {
  CinemaListingCubit({required this.repository})
      : super(CinemaListingInitialState()) {
    _getCinemasList();
  }

  final CinemasRepository repository;

  void _getCinemasList() async {
    emit(CinemaListingLoadingState());
    final _result = await repository.getCinemasList();
    if (_result.data != null) {
      emit(CinemaListingLoadedState(_result.data?.cinemas ?? []));
    } else {
      emit(CinemaListingErrorState(_result.error?.message ?? ''));
    }
  }
}
