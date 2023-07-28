import 'package:rate_exchange_app/domain/model/rates_result.dart';

abstract interface class RatesRepository {
  Future<RatesResult> getRatesResult();
}
