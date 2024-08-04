import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {}

class LoadingState extends BaseState {
  @override
  List<Object?> get props => ['LoadingState'];
}

class ErrorState extends BaseState {
  ErrorState(this.errorMessage);
  final String errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}

class LoadedState<T> extends BaseState {
  LoadedState(this.data);
  final T data;

  @override
  List<Object?> get props => [data];
}
