import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShowBannerImage extends StatelessWidget {
  const ShowBannerImage({
    super.key,
    required this.imagePath,
    this.height,
    this.width,
  });

  final String? imagePath;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    if (imagePath == null) {
      return const SizedBox();
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        cacheKey: imagePath,
        imageUrl: 'https://image.tmdb.org/t/p/original$imagePath',
        fit: BoxFit.cover,
        width: width ?? double.infinity,
        height: height,
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Container(
              color: Colors.grey.withOpacity(0.5),
            ),
          );
        },
        errorWidget: (context, url, error) {
          return const Center(child: Icon(Icons.error));
        },
      ),
    );
  }
}
