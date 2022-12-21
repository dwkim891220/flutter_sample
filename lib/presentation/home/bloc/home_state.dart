part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitState extends HomeState {
  const HomeInitState();
}

class HomeFetchingSuccessState extends HomeState {
  const HomeFetchingSuccessState({required this.list});

  final List<Movie> list;

  @override
  List<Object> get props => [list];
}

class HomeFetchingFailedState extends HomeState {
  const HomeFetchingFailedState({required this.message});

  final String? message;

  @override
  List<Object> get props => [message ?? ''];
}
