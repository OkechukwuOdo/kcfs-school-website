part of 'loading_bloc.dart';

// @immutable
sealed class LoadingState {}

final class LoadingInitial extends LoadingState {}

class HomeLoaded extends LoadingState {}

class HomeError extends LoadingState {
  final String message;
  HomeError(this.message);
}
