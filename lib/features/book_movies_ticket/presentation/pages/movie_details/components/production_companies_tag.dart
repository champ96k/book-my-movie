import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductionCompaniesTag extends StatelessWidget {
  const ProductionCompaniesTag({super.key, required this.productionCompanies});

  final List<ProductionCompany> productionCompanies;

  @override
  Widget build(BuildContext context) {
    final _companies =
        productionCompanies.where((e) => e.logoPath != null).toList();
    return Wrap(
      alignment: WrapAlignment.start,
      children: _companies.map((e) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(8),
          ),
          child: CachedNetworkImage(
            cacheKey: e.logoPath,
            imageUrl: 'https://image.tmdb.org/t/p/original${e.logoPath ?? ''}',
            fit: BoxFit.contain,
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
      }).toList(),
    );
  }
}
