import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String runtime;
  final Function()? onClick;
  final Function()? onLongPress;

  const GridItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.runtime,
    this.onClick,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onClick,
        onLongPress: onLongPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) => const AspectRatio(
                  aspectRatio: 2000 / 3000,
                  child: Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold, height: 1.1)),
                    ),
                    Text(runtime),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
