part of 'detail_bloc.dart';

abstract class DetailState extends Equatable {
  const DetailState();

  @override
  List<Object> get props => [];
}

class DetailInitState extends DetailState {
  const DetailInitState();
}

class DetailFetchingSuccessState extends DetailState {
  const DetailFetchingSuccessState({required this.data});

  final Movie data;

  @override
  List<Object> get props => [data];
}

class DetailFetchingFailedState extends DetailState {
  const DetailFetchingFailedState({required this.message});

  final String? message;

  @override
  List<Object> get props => [message ?? ''];
}
