import 'package:flutter/material.dart';
import 'package:tada_clone/home/components/address_item.dart';
import 'package:tada_clone/home/domain/model/address.dart';

class HistoryList extends StatelessWidget {
  final List<Address> addresses;

  const HistoryList({
    super.key,
    required this.addresses,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: addresses
          .map(
            (e) => AddressItem(
              address: e,
              icon: const Icon(
                Icons.history,
                color: Colors.grey,
              ),
            ),
          )
          .toList(),
    );
  }
}
