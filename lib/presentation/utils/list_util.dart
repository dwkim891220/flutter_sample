import 'package:flutter/widgets.dart';

bool isBottom(ScrollController? controller) {
  if (controller == null) return false;
  if (!controller.hasClients) return false;
  final maxScroll = controller.position.maxScrollExtent;
  final currentScroll = controller.offset;
  return currentScroll >= (maxScroll * 0.9);
}

enum ListStatus {
  initial,
  loading,
  success,
  failure,
  empty,
}
