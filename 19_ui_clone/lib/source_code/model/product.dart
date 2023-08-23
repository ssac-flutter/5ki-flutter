import 'package:freeshare/source_code/model/lang.dart';

import 'product_color.dart';

class Product {
  final Lang name;
  final Lang brand;
  final Lang desc;
  final int price;
  final String priceUnit;
  final String rating;
  final List<ProductColor> productColorList;

  Product({
    required this.name,
    required this.brand,
    required this.desc,
    required this.price,
    required this.priceUnit,
    required this.rating,
    required this.productColorList,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: Lang.fromJson(json['name'] ?? {}),
      brand: Lang.fromJson(json['brand'] ?? {}),
      desc: Lang.fromJson(json['desc'] ?? {}),
      price: json['price'] ?? 0,
      priceUnit: json['priceUnit'] ?? '',
      rating: json['rating'] ?? 0,
      productColorList: (json['colorList'] ?? []).map<ProductColor>(
        (c) {
          return ProductColor.fromJson(c);
        },
      ).toList(),
    );
  }
}
