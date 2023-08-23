import 'package:flutter/material.dart';
import 'package:freeshare/view/market_price/widget/market_price_graph.dart';

class MarketPriceView extends StatelessWidget {
  const MarketPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Icon(Icons.arrow_back_outlined),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            MarketPriceGraph(),
          ],
        ),
      ),
    );
  }
}
