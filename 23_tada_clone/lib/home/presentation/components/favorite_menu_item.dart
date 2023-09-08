import 'package:flutter/material.dart';

class FavoriteMenuItem extends StatelessWidget {
  final Icon icon;
  final String title;

  const FavoriteMenuItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
    );
  }
}
