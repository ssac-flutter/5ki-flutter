import 'package:flutter/material.dart';

import 'favorite_menu_item.dart';

class FavoriteMenuList extends StatelessWidget {
  final Widget? header;
  final void Function(int index) onClick;

  const FavoriteMenuList({
    super.key,
    required this.onClick,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (header != null) header!,
        const FavoriteMenuItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.grey,
          ),
          title: '집 등록',
        ),
        const FavoriteMenuItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.grey,
          ),
          title: '회사 등록',
        ),
      ],
    );
  }
}
