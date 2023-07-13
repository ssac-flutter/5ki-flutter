import 'package:websocket_sample/domain/model/price.dart';

abstract interface class PriceRepository {
  Stream<Price> getPriceStream();
}

class MockPriceRepository implements PriceRepository {
  final _prices = [
    {"e":"aggTrade","E":1689220213257,"a":491965795,"s":"BNBUSDT","p":"242.810","q":"0.04","f":1024792271,"l":1024792271,"T":1689220213101,"m":false},
    {"e":"aggTrade","E":1689220214191,"a":491965796,"s":"BNBUSDT","p":"242.810","q":"0.87","f":1024792272,"l":1024792272,"T":1689220214036,"m":false},
    {"e":"aggTrade","E":1689220214608,"a":491965797,"s":"BNBUSDT","p":"242.810","q":"0.05","f":1024792273,"l":1024792273,"T":1689220214452,"m":false},
  ];

  @override
  Stream<Price> getPriceStream() async* {
    for (final priceData in _prices) {
      // Wait for 1 second
      await Future.delayed(const Duration(seconds: 1));

      // Convert priceData to Price object
      final price = Price.fromJson(priceData);

      // Yield the price
      yield price;
    }
  }
}