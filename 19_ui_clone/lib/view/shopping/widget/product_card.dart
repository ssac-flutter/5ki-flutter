import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:freeshare/source_code/model/product.dart';
import 'package:freeshare/theme/component/rating.dart';
import 'package:freeshare/util/helper/intl_helper.dart';
import 'package:freeshare/util/route_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutePath.product,
          arguments: product,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.color.surface,
          boxShadow: context.deco.shadow,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.productColorList.isNotEmpty)
              if (product.productColorList.isNotEmpty)
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: product.productColorList.first.imageUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            const SizedBox(
              height: 4,
            ),
            Text(
              product.name.toString(),
              style: context.typo.headline4
                  .copyWith(fontWeight: context.typo.semiBold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              product.brand.toString(),
              style: context.typo.body2.copyWith(
                  fontWeight: context.typo.light, color: context.color.subtext),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  IntlHelper.currency(
                    number: product.price,
                    symbol: product.priceUnit,
                  ),
                  style: context.typo.subtitle2,
                )),
                Rating(
                  rating: product.rating,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
