import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';

class AddressItem extends StatelessWidget {
  final Icon icon;
  final Address address;

  const AddressItem({
    super.key,
    required this.address,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(address.title),
      subtitle: Text(address.address),
    );
  }
}
