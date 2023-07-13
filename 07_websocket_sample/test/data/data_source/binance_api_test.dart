import 'package:flutter_test/flutter_test.dart';
import 'package:websocket_sample/data/data_source/binance_api.dart';

void main() {
  test('실제 데이터 잘 들어오나 확인', () async {
    final api = BinanceApi();

    api.getPriceStream().listen((event) {
      print(event);
    });
  });
}