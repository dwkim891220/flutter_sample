import 'package:flutter_sample/core/network_error.dart';

abstract class DataState<T> {
  const DataState({this.data, this.error});

  final T? data;
  final NetworkError? error;
}

class Success<T> extends DataState<T> {
  const Success(T data) : super(data: data);
}

class Failed<T> extends DataState<T> {
  const Failed(NetworkError error) : super(error: error);
}
