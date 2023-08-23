import 'package:flutter/material.dart';
import 'package:freeshare/service/cart_service.dart';
import 'package:freeshare/source_code/model/cart_item.dart';
import 'package:freeshare/source_code/model/product.dart';
import 'package:freeshare/theme/component/cart_button.dart';
import 'package:freeshare/theme/component/color_picker.dart';
import 'package:freeshare/theme/component/pop_button.dart';
import 'package:freeshare/util/lang/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'widget/product_bottom_sheet.dart';
import 'widget/product_color_preview.dart';
import 'widget/product_desc.dart';

class ProductView extends StatefulWidget {
  const ProductView({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  /// 선택한 수량
  int count = 1;

  /// 선택한 색상
  int colorIndex = 0;

  /// 수량 업데이트 이벤트 함수
  void onCountChanged(int newCount) {
    setState(() {
      count = newCount;
    });
  }

  /// 색상 업데이트 이벤트 함수
  void onColorIndexChanged(int newColorIndex) {
    setState(() {
      colorIndex = newColorIndex;
    });
  }

  /// 카트에 상품 추가
  void onAddToCartPressed() {
    final CartService cartService = context.read();
    final CartItem newCartItem = CartItem(
      colorIndex: colorIndex,
      count: count,
      isSelected: true,
      product: widget.product,
    );
    cartService.add(newCartItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.product),
        leading: const PopButton(),
        titleSpacing: 0,
        actions: const [
          CartButton(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Wrap(
                runSpacing: 32,
                alignment: WrapAlignment.center,
                children: [
                  /// ProductColorPreview
                  ProductColorPreview(
                    colorIndex: colorIndex,
                    product: widget.product,
                  ),

                  /// ColorPicker
                  ColorPicker(
                    colorIndex: colorIndex,
                    colorList: widget.product.productColorList.map((e) {
                      return e.color;
                    }).toList(),
                    onColorSelected: onColorIndexChanged,
                  ),

                  /// ProductDesc
                  ProductDesc(product: widget.product),
                ],
              ),
            ),
          ),

          /// ProductBottomSheet
          ProductBottomSheet(
            count: count,
            product: widget.product,
            onCountChanged: onCountChanged,
            onAddToCartPressed: onAddToCartPressed,
          ),
        ],
      ),
    );
  }
}
