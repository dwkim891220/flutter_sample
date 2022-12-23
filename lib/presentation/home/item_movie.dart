import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/movie.dart';

class ItemMovie extends StatelessWidget {
  const ItemMovie({
    required this.item,
    super.key,
  });

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed('detail', params: {'id': item.id.toString()});
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
        child: Row(
          children: [
            ExtendedImage.network(
              item.posterUrl,
              width: 200,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item.overview,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item.releaseDate,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
