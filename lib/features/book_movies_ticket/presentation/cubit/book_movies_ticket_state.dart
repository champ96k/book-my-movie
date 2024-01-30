part of 'book_movies_ticket_cubit.dart';

abstract class BookMoviesTicketState extends Equatable {}

class BookMoviesTicketInitial extends BookMoviesTicketState {
  @override
  List<Object?> get props => ['BookMoviesTicketInitial'];
}

class BookMoviesLoading extends BookMoviesTicketState {
  @override
  List<Object?> get props => ['BookMoviesLoading'];
}

class BookMoviesError extends BookMoviesTicketState {
  BookMoviesError(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class UpcomingMoviesLoaded extends BookMoviesTicketState {
  UpcomingMoviesLoaded(this.model);

  final UpcomingMoviesModel? model;
  @override
  List<Object?> get props => [model];
}
