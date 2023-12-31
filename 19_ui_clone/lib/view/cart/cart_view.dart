import 'package:flutter/material.dart';
import 'package:freeshare/service/cart_service.dart';
import 'package:freeshare/theme/component/pop_button.dart';
import 'package:freeshare/util/lang/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'widget/cart_item_tile.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final CartService cartService = context.watch();
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.cart),
        leading: const PopButton(),
        titleSpacing: 0,
      ),
      body: ListView.builder(
        itemCount: cartService.cartItemList.length,
        itemBuilder: (context, index) {
          final cartItem = cartService.cartItemList[index];
          return CartItemTile(
            cartItem: cartItem,
            onPressed: () {
              cartService.update(
                index,
                cartItem.copyWith(
                  isSelected: !cartItem.isSelected,
                ),
              );
            },
            onCountChanged: (count) {
              cartService.update(
                index,
                cartItem.copyWith(
                  count: count,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
