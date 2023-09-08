import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';

import 'address_item.dart';

class AddressList extends StatelessWidget {
  final List<Address> addresses;
  final void Function(Address address) onClick;

  const AddressList({
    super.key,
    required this.addresses,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: addresses
          .map(
            (e) => InkWell(
              onTap: () {
                onClick(e);
              },
              child: AddressItem(
                address: e,
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
