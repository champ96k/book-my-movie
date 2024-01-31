part of 'cinema_listing_cubit.dart';

abstract class CinemaListingState extends Equatable {}

class CinemaListingInitialState extends CinemaListingState {
  @override
  List<Object?> get props => ['CinemaListingInitialState'];
}

class CinemaListingLoadingState extends CinemaListingState {
  @override
  List<Object?> get props => ['CinemaListingLoadingState'];
}

class CinemaListingErrorState extends CinemaListingState {
  CinemaListingErrorState(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class CinemaListingLoadedState extends CinemaListingState {
  CinemaListingLoadedState(this.cinemas);
  final List<Cinema> cinemas;
  @override
  List<Object?> get props => [cinemas];
}
