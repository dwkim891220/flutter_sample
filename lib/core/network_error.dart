class NetworkError {
  const NetworkError({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;
}
