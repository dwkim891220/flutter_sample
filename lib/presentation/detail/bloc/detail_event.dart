part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchDetail extends DetailEvent {
  FetchDetail({required this.id});

  final int id;
}
