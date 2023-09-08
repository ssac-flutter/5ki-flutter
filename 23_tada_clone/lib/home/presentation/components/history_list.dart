import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';

import 'address_item.dart';

class HistoryList extends StatelessWidget {
  final Widget? header;
  final List<Address> addresses;
  final void Function(Address address) onClick;

  const HistoryList({
    super.key,
    required this.addresses,
    required this.onClick,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (header != null) header!,
        ...addresses
            .map(
              (e) => InkWell(
                onTap: () {
                  onClick(e);
                },
                child: AddressItem(
                  address: e,
                  icon: const Icon(
                    Icons.history,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
            .toList()
      ],
    );
  }
}
