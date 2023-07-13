import 'package:websocket_sample/domain/model/price.dart';

abstract interface class PriceRepository {
  Stream<Price> getPriceStream();
}
