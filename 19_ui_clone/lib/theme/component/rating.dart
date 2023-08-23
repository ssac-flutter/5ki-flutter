import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:freeshare/theme/component/asset_icon.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key, required this.rating}) : super(key: key);

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AssetIcon(
          'star',
          color: context.color.tertiary,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          rating,
          style: context.typo.body1.copyWith(
              fontWeight: context.typo.light, color: context.color.subtext),
        )
      ],
    );
  }
}
