import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({required this.urlImage,
    super.key,
  });
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: urlImage,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
