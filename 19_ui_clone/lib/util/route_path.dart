import 'package:flutter/material.dart';
import 'package:freeshare/source_code/model/product.dart';
import 'package:freeshare/view/cart/cart_view.dart';
import 'package:freeshare/view/market_price/market_price_view.dart';
import 'package:freeshare/view/market_price/widget/market_price_graph.dart';
import 'package:freeshare/view/product/product_view.dart';
import 'package:freeshare/view/shopping/shopping_view.dart';

abstract class RoutePath {
  static const String shopping = 'shopping';
  static const String product = 'product';
  static const String cart = 'cart';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    switch (settings.name) {
      case RoutePath.shopping:
        page = const MarketPriceView();
        break;
      case RoutePath.product:
        Product product = settings.arguments as Product;
        page = ProductView(product: product);
        break;
      case RoutePath.cart:
        page = const CartView();
        break;
    }

    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
