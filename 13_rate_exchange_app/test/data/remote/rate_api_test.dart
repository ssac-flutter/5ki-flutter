import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rate_exchange_app/data/remote/rate_api.dart';

void main() {
  test('rete_api 결과를 잘 가져와야 한다', () async {
    final api = RateApi(Dio());

    final dto = await api.getRates();
    
    expect(dto.rates!['USD'], 1);
    expect(dto.rates!['KRW'], 1272.899161);
  });
}