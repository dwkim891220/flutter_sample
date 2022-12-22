part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeListState extends HomeState {
  const HomeListState({
    this.status = ListStatus.initial,
    this.items = const <Movie>[],
    this.hasReachedMax = false,
  });

  final ListStatus status;
  final List<Movie> items;
  final bool hasReachedMax;

  bool get isLoading => status == ListStatus.loading;

  @override
  List<Object> get props => [
        status,
        items,
        hasReachedMax,
      ];

  HomeListState copyWith({
    ListStatus? status,
    List<Movie>? items,
    bool? hasReachedMax,
  }) {
    return HomeListState(
      status: status ?? this.status,
      items: items ?? this.items,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'HomeListState { status: $status, hasReachedMax: $hasReachedMax, products: ${items.length}, isLoading: $isLoading';
  }
}
