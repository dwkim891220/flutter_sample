import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entities/movie.dart';

class ItemMovie extends StatelessWidget {
  const ItemMovie({
    required this.item,
    super.key,
  });

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExtendedImage.network(
          item.posterPath,
          width: 400,
          fit: BoxFit.fitWidth,
        ),
        Text(
          item.title,
          style: const TextStyle(fontSize: 14),
        ),
        Text(
          item.overview,
          maxLines: 3,
          style: const TextStyle(fontSize: 14),
        ),
        Text(
          item.releaseDate,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
