import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:freeshare/source_code/model/product.dart';
import 'package:freeshare/theme/component/rating.dart';
import 'package:freeshare/util/lang/generated/l10n.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          /// Title
          Row(
            children: [
              Expanded(
                child: Text(
                  S.current.description,
                  style: context.typo.headline4.copyWith(
                    fontWeight: context.typo.semiBold,
                  ),
                ),
              ),

              /// Rating
              Rating(rating: product.rating),
            ],
          ),

          const SizedBox(height: 24),

          /// Content
          Text(
            product.desc.toString(),
            style: context.typo.headline6.copyWith(
              color: context.color.subtext,
            ),
          ),
        ],
      ),
    );
  }
}
