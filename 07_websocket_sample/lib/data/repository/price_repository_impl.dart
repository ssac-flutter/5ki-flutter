import 'package:websocket_sample/data/data_source/binance_api.dart';
import 'package:websocket_sample/domain/model/price.dart';
import 'package:websocket_sample/domain/repository/price_repository.dart';

class PriceRepositoryImpl implements PriceRepository {
  final _api = BinanceApi();

  @override
  Stream<Price> getPriceStream() {
    return _api.getPriceStream();
  }
}
